<?php

// php artisan agendamentos:verificar

namespace App\Console\Commands;

use App\Notifications\ComandoExecutadoNotification;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Notification; // Importe o facade Notification
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log; // Importar o facade Log
use Illuminate\Support\Facades\Date;

class VerificarAgendamentos extends Command
{
    protected $signature = 'agendamentos:verificar';
    protected $description = 'Verifica agendamentos e envia mensagens no WhatsApp';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        // Buscar agendamentos na API de agendamento
        $agendamentos = Http::get('http://localhost:8000/api/agenda')->json();

        foreach ($agendamentos as $agendamento) {
            // Obtenha a data e hora do agendamento no fuso horário "America/Sao_Paulo"
            $dataAgendamento = Carbon::parse($agendamento['start'], 'America/Sao_Paulo')->format('Y-m-d');

            // Obtenha a data e hora atual em São Paulo
            $dataAtual = Carbon::now('America/Sao_Paulo')->format('Y-m-d');

            // Verificar se o agendamento é para o dia atual
            if ($dataAgendamento === $dataAtual) {
                // Buscar informações do cliente na API de clientes
                $cliente = Http::get('http://localhost:8000/api/clientes/' . $agendamento['cliente_id'])->json();

                $telefone = $cliente['telefone'];

                // Extrair apenas os dígitos do número de telefone
                $telefoneFormatado = preg_replace('/\D/', '', $telefone);

                // Verificar se o terceiro dígito é "9" e, se for, removê-lo
                if (substr($telefoneFormatado, 2, 1) === '9') {
                    $telefoneFormatado = substr($telefoneFormatado, 0, 2) . substr($telefoneFormatado, 3);
                }

                // Formatar a data e hora do agendamento
                $dataHoraAgendamento = Carbon::parse($agendamento['start'], 'America/Sao_Paulo');
                $horaAgendamento = $dataHoraAgendamento->format('H:i');
                $dataAtual = Date::now('America/Sao_Paulo');
                $horaAtualFormatada = $dataAtual->format('H:i');

                $nomeCliente = $cliente['nome'];
                $nomeProcedimento = $agendamento['procedimento'];
                $valorProcedimento = $agendamento['valor'];
                $partesNome = explode(' ', $nomeCliente);
                $primeiroNome = $partesNome[0];

                // Calcular a diferença de tempo entre o agendamento e a hora atual em minutos
                $diferencaEmMinutos = $dataHoraAgendamento->diffInMinutes($dataAtual);

                // Construir a mensagem
                $mensagem = "Oi, $primeiroNome! Estou passando para te lembrar do nosso agendamento hoje às $horaAgendamento! Serviço: $nomeProcedimento. Valor: R$ $valorProcedimento. Até logo.";

                // Criar uma chave de cache única para este cliente e esta data
                $cacheKey = $cliente['nome'];

                // dd($cacheKey);

                // Verificar se já foi notificado hoje
                if (Cache::has($cacheKey)) {
                    $this->info('Lembrete já enviado para ' . $cliente['nome'] . ' hoje. Pulando.');
                    continue;
                }

                // dd($cacheKey);

                // dd(Cache::has($cacheKey));

                // Montar os dados da solicitação POST
                $data = [
                    'id' => '55' . $telefoneFormatado,
                    'message' => $mensagem,
                ];

                if ($diferencaEmMinutos < 180 && $horaAgendamento > $horaAtualFormatada && $horaAtualFormatada > '06:00') {
                    // Enviar a mensagem pelo WhatsApp
                    $response = Http::post('https://whatsapp.studiokatyanemendes.com.br/message/text?key=1', $data);

                    // Verificar a resposta da API de WhatsApp e tomar as ações necessárias
                    if ($response->successful()) {

                        $this->info('Mensagem enviada para ' . $cliente['nome']);
                        Log::info('Mensagem enviada para ' . $cliente['nome']); // Registrar no log

                        // Antes de definir o cache
                        Log::debug('Antes de definir o cache: ' . Cache::get($cacheKey));

                        // Armazenar a entrada de cache para este cliente apenas após o envio bem-sucedido
                        Cache::put($cacheKey, true, now()->addHours(24));

                        // Após definir o cache
                        Log::debug('Após definir o cache: ' . Cache::get($cacheKey));

                    } else {
                        $this->error('Erro ao enviar mensagem para ' . $cliente['nome']);
                        Log::error('Erro ao enviar mensagem para ' . $cliente['nome']); // Registrar no log
                    }
                }
            }
        }

        // Notificar por e-mail
        $this->info('Notificando por e-mail...');
        Log::info('Notificando por e-mail...'); // Registrar no log

        // Notifique por e-mail usando o facade Notification
        Notification::route('mail', 'mrlon.mra@gmail.com')->notify(new ComandoExecutadoNotification);

        // Saída de informações
        $this->info('Notificação por e-mail enviada com sucesso.');
        Log::info('Notificação por e-mail enviada com sucesso.'); // Registrar no log
    }
}
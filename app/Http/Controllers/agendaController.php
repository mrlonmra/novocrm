<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Agenda;
use App\Models\Procedimentos;

class agendaController extends Controller
{
    public const REDIRECT_URL = 'http://localhost/crm_studiokm/?page=agendarhorario';

    public function index()
    {
        $agenda = Agenda::all();

        return response()->json($agenda, 200, [], JSON_PRETTY_PRINT);
    }

    public function gravarAgenda(Request $request)
    {
        $validatedData = $request->validate([
            'date' => 'required|date',
            'time' => 'required',
            'nomeCliente' => 'required',
            'idCliente' => 'required|string',
            'procedimento' => 'required|array',
            'valor' => 'required|string',
            'description' => 'nullable|string',
            'duration' => 'required|integer|min:1',
        ]);

        $procedimentos = Procedimentos::all();

        // Obtenha o ID do cliente selecionado a partir do campo hidden
        $clienteSelecionadoId = $request->input('idCliente');

        $duracao = array_sum(array_map(function ($proc) use ($procedimentos) {
            return $procedimentos->firstWhere('procedimento', $proc)->duration;
        }, $request->procedimento));

        $valorTotal = array_sum(array_map(function ($proc) use ($procedimentos) {
            return floatval($procedimentos->firstWhere('procedimento', $proc)->valor);
        }, $request->procedimento));

        $startDateTime = new \DateTime("{$validatedData['date']} {$validatedData['time']}", new \DateTimeZone('America/Sao_Paulo'));
        $endDateTime = clone $startDateTime;
        $endDateTime->add(new \DateInterval("PT{$duracao}M"));

        $agenda = new Agenda();
        $agenda->fill($validatedData);
        $agenda->cliente_id = $clienteSelecionadoId;
        $agenda->procedimento = implode(', ', $request->procedimento);
        $agenda->valor = $valorTotal;
        $agenda->start = $startDateTime->format('Y-m-d H:i:s');
        $agenda->end = $endDateTime->format('Y-m-d H:i:s');
        $agenda->hours = $duracao;

        $agenda->save();

        return redirect(self::REDIRECT_URL);
    }

    public function show($id)
    {
        return Agenda::findOrFail($id);
    }

    public function updateAgenda(Request $request, $id)
    {
        $agenda = Agenda::find($id);

        if (!$agenda) {
            return response()->json(['message' => 'Agendamento não encontrado'], 404);
        }

        $validatedData = $request->validate([
            'date' => 'required|date',
            'time' => 'required',
            'nomeCliente' => 'required',
            'procedimento' => 'required|array',
            'valor' => 'required|string',
            'description' => 'nullable|string',
            'duration' => 'required|integer|min:1',
        ]);

        $procedimentos = Procedimentos::all();

        $duracao = array_sum(array_map(function ($proc) use ($procedimentos) {
            return $procedimentos->firstWhere('procedimento', $proc)->duration;
        }, $request->procedimento));

        $valorTotal = array_sum(array_map(function ($proc) use ($procedimentos) {
            return floatval($procedimentos->firstWhere('procedimento', $proc)->valor);
        }, $request->procedimento));

        $startDateTime = new \DateTime("{$validatedData['date']} {$validatedData['time']}", new \DateTimeZone('America/Sao_Paulo'));
        $endDateTime = clone $startDateTime;
        $endDateTime->add(new \DateInterval("PT{$duracao}M"));

        $validatedData['procedimento'] = implode(', ', $request->procedimento);
        $validatedData['valor'] = $valorTotal;
        $validatedData['start'] = $startDateTime->format('Y-m-d H:i:s');
        $validatedData['end'] = $endDateTime->format('Y-m-d H:i:s');
        $validatedData['hours'] = $duracao;

        $agenda->update($validatedData);

        return response()->json(['message' => 'Agendamento atualizado com sucesso'], 200);
    }

    public function deleteAgenda($id)
    {
        $agenda = Agenda::find($id);

        if (!$agenda) {
            return response()->json(['message' => 'Agendamento não encontrado'], 404);
        }

        $agenda->delete();

        return response()->json(['message' => 'Agendamento excluído com sucesso'], 200);
    }
}

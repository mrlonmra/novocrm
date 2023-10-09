<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cliente;

class clienteController extends Controller
{
    // For a more dynamic approach, consider using an environment variable for the redirect URL
    public const REDIRECT_URL = 'http://localhost/crm_studiokm/?page=listarclientes';

    public function index()
    {
        return response()->json(Cliente::all(), 200, [], JSON_PRETTY_PRINT);
    }

    public function gravarCliente(Request $requisicao)
    {
        $validatedData = $requisicao->validate([
            'nome' => 'required|string',
            'telefone' => 'required|string',
            'data_nasc' => 'nullable|date',
            'email' => 'nullable|email',
            'bairro' => 'nullable|string',
        ]);

        Cliente::create($validatedData);

        return redirect(self::REDIRECT_URL);
    }

    public function gravarClienteModalAgenda(Request $requisicao)
    {
        $validatedData = $requisicao->validate([
            'nome' => 'required|string',
            'telefone' => 'required|string',
            'data_nasc' => 'nullable|date',
            'email' => 'nullable|email',
            'bairro' => 'nullable|string',
        ]);

        Cliente::create($validatedData);

        // Obtém a URL de redirecionamento do campo redirect_url
        $redirectURL = $requisicao->input('redirect_url');

        // Redireciona o usuário de volta para a URL de redirecionamento com o parâmetro "success=true"
        return redirect($redirectURL . '&success=true');
    }

    public function editarCliente(Request $requisicao)
    {
        // Valide os dados da requisição
        $validatedData = $requisicao->validate([
            'id' => 'required|integer',
            'nome' => 'required|string',
            'telefone' => 'required|string',
            'data_nasc' => 'nullable|date',
            'email' => 'nullable|email',
            'bairro' => 'nullable|string',
        ]);

        $id = $validatedData['id'];
        unset($validatedData['id']); // Remova o ID dos dados validados para evitar que ele seja atualizado

        // Verifique se o cliente com o ID fornecido existe
        $cliente = Cliente::find($id);

        if (!$cliente) {
            return response()->json('Cliente não encontrado', 404);
        }

        // Atualize os dados do cliente
        $cliente->update($validatedData);

        return redirect(self::REDIRECT_URL);
    }



    public function show($id)
    {
        return Cliente::findOrFail($id);
    }

    
    public function excluirCliente($id)
    {
        $cliente = Cliente::find($id);

        if (!$cliente) {
            return response()->json(['message' => 'Cliente não encontrado'], 404);
        }

        $cliente->delete();

        return response()->json(['message' => 'Cliente excluído com sucesso'], 200);
    }

    // ... (Retain the other methods if you'll be using them later)
}

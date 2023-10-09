<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Procedimentos;

class procedimentosController extends Controller
{
    public const REDIRECT_URL = 'http://localhost/crm_studiokm/?page=listarprocedimentos';

    public function index()
    {
        return response()->json(Procedimentos::all(), 200, [], JSON_PRETTY_PRINT);
    }

    public function gravarProcedimento(Request $requisicao)
    {
        $validatedData = $requisicao->validate([
            'procedimento' => 'required|string',
            'valor' => 'required|numeric',
            'categoria' => 'required|string',
            'duration' => 'required|string',
        ]);

        Procedimentos::create($validatedData);

        return redirect(self::REDIRECT_URL);
    }

    public function editarProcedimento(Request $requisicao)
    {
        // Valide os dados da requisição
        $validatedData = $requisicao->validate([
            'id' => 'required|integer',
            'procedimento' => 'required|string',
            'valor' => 'required|numeric',
            'categoria' => 'required|string',
            'duration' => 'required|string',
        ]);

        $id = $validatedData['id'];
        
        unset($validatedData['id']); // Remova o ID dos dados validados para evitar que ele seja atualizado

        // Verifique se o cliente com o ID fornecido existe
        $procedimento = Procedimentos::find($id);

        if (!$procedimento) {
            return response()->json('Cliente não encontrado', 404);
        }

        // Atualize os dados do cliente
        $procedimento->update($validatedData);

        return redirect(self::REDIRECT_URL);
    }

    public function show($id)
    {
        return Procedimentos::findOrFail($id);
    }

    public function excluirProcedimento($id)
    {
        $procedimento = Procedimentos::find($id);

        if (!$procedimento) {
            return response()->json(['message' => 'Procedimento não encontrado'], 404);
        }

        $procedimento->delete();

        return response()->json(['message' => 'Procedimento excluído com sucesso'], 200);
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Usuario;

class usuarioController extends Controller
{
    public const REDIRECT_URL = 'http://localhost/crm_studiokm/?page=listarusuarios';

    public function index()
    {
        return response()->json(Usuario::all(), 200, [], JSON_PRETTY_PRINT);
    }

    public function gravarUsuario(Request $requisicao)
    {
        $validatedData = $requisicao->validate([
            'nome' => 'required|string',
            'email' => 'required|email',
            'senha' => 'required',
        ]);

        // Encrypt the password using MD5 (as specified, though not recommended for production use)
        $validatedData['senha'] = md5($validatedData['senha']);

        Usuario::create($validatedData);

        return redirect(self::REDIRECT_URL);
    }

    public function editarUsuario(Request $requisicao)
    {
        // Valide os dados da requisição
        $validatedData = $requisicao->validate([
            'id' => 'required|integer',
            'nome' => 'required|string',
            'email' => 'required|email',
            'senha' => 'required'
        ]);

        // Encrypt the password using MD5 (as specified, though not recommended for production use)
        $validatedData['senha'] = md5($validatedData['senha']);

        $id = $validatedData['id'];
        unset($validatedData['id']); // Remova o ID dos dados validados para evitar que ele seja atualizado

        // Verifique se o cliente com o ID fornecido existe
        $usuario = Usuario::find($id);

        if (!$usuario) {
            return response()->json('Usuario não encontrado', 404);
        }

        // Atualize os dados do usuario
        $usuario->update($validatedData);

        if ($validatedData){
            return response()->json(['message' => 'Usuário Editado com sucesso'], 200);
        }

        return redirect(self::REDIRECT_URL);
    }

    public function show($id)
    {
        return Usuario::findOrFail($id);
    }
}

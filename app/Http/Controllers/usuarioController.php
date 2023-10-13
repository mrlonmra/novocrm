<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; // Importe a classe Auth
use App\Models\User;

class usuarioController extends Controller
{
    public const REDIRECT_URL = 'http://localhost/crm_studiokm/?page=listarusuarios';

    public function index()
    {
        return response()->json(User::all(), 200, [], JSON_PRETTY_PRINT);
    }

    public function funcionarios($user_id)
    {
        // Busque os funcionários associados ao usuário
        $funcionarios = user::where('id_patrao', $user_id)->get();

        return response()->json($funcionarios);
    }


    public function gravarUsuario(Request $requisicao)
    {
        $validatedData = $requisicao->validate([
            'name' => 'required|string',
            'id_tipo_usuario' => 'required|string',
            'email' => 'required|email',
            'password' => 'required',
        ]);

        User::create($validatedData);

        return redirect(self::REDIRECT_URL);
    }

    public function editarUsuario(Request $requisicao)
    {
        // Valide os dados da requisição
        $validatedData = $requisicao->validate([
            'id' => 'required|integer',
            'name' => 'required|string',
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $id = $validatedData['id'];
        unset($validatedData['id']); // Remova o ID dos dados validados para evitar que ele seja atualizado

        // Verifique se o usuário com o ID fornecido existe
        $usuario = User::find($id);

        if (!$usuario) {
            return response()->json('Usuário não encontrado', 404);
        }

        // Atualize os dados do usuário
        $usuario->update($validatedData);

        if ($usuario) {
            return response()->json(['message' => 'Usuário Editado com sucesso'], 200);
        }

        return redirect(self::REDIRECT_URL);
    }

    public function show($id)
    {
        return User::findOrFail($id);
    }

    // Adicione a lógica de login
    public function login(Request $requisicao)
    {
        $credentials = $requisicao->only('email', 'password');

        if (Auth::attempt($credentials)) {
            // Autenticação bem-sucedida
            return redirect('/dashboard'); // Redireciona para a página de dashboard
        } else {
            // Autenticação falhou
            return redirect('/login')->with('error', 'Email ou senha inválidos.');
        }
    }
}
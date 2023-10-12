<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;


class LoginController extends Controller
{
    public function index()
    {
        return view('login');
    }

    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ], [
            'email.required' => 'O campo e-mail é obrigatório.',
            'email.email' => 'O campo e-mail deve ter um e-mail válido.',
            'password.required' => 'O campo senha é obrigatório.'
        ]);

        $data = $request->only('email', 'password');

        $autenticado = Auth::attempt($data);

        var_dump($autenticado);

        if (!$autenticado) {
            return redirect()->route('login.index')->withErrors(['error' => 'E-mail ou Senha Invalidos']);
        }

        return redirect()->route('login.index')->with('success', 'Logado com sucesso');


    }

    public function destroy()
    {
        Auth::logout();

        return redirect()->route('home')->with('success', 'Deslogado com sucesso');

    }
}
<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

// Rota da página inicial
Route::get('/', [HomeController::class, 'index'])->name('home');

// Rotas de login
Route::prefix('login')->group(function () {
    Route::get('/', [LoginController::class, 'index'])->name('login.index');
    Route::post('/', [LoginController::class, 'store'])->name('login.store');
    Route::get('/logout', [LoginController::class, 'destroy'])->name('login.destroy');
});

// Rota de funcionários
Route::get('/funcionarios', function () {
    return view('funcionarios');
})->name('funcionarios');

// Rota para verificar o ID do usuário autenticado
Route::get('/user-id1841651', function () {
    if (Auth::check()) {
        return response()->json(['user_id' => Auth::user()->id]);
    } else {
        return response()->json(['user_id' => null]);
    }
})->name('user.id');


<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\clienteController;
use App\Http\Controllers\usuarioController;
use App\Http\Controllers\agendaController;
use App\Http\Controllers\procedimentosController;

// Rotas de Clientes
Route::get('/clientes', [clienteController::class, 'index']);
Route::post('/clientes', [clienteController::class, 'gravarCliente']);
Route::post('/clientes/modalAgenda', [clienteController::class, 'gravarClienteModalAgenda']);
Route::post('/clientes/editarCliente', [clienteController::class, 'editarCliente']);
Route::delete('/clientes/excluirCliente/{id}', [clienteController::class, 'excluirCliente']);
Route::get('/clientes/{id}', [clienteController::class, 'show']);

// Rotas de Usuários
Route::get('/usuarios', [usuarioController::class, 'index']);
Route::post('/usuarios', [usuarioController::class, 'gravarUsuario']);
Route::get('/usuarios/{id}', [usuarioController::class, 'show']);
Route::post('/usuarios/editarUsuario', [usuarioController::class, 'editarUsuario']);
Route::get('/usuarios/{user_id}/funcionarios', [usuarioController::class, 'funcionarios']);


// Rotas de Agenda
Route::get('/agenda', [agendaController::class, 'index']);
Route::post('/agenda', [agendaController::class, 'gravarAgenda']);
Route::get('/agenda/{id}', [agendaController::class, 'show']);
Route::post('/agenda/{id}', [agendaController::class, 'updateAgenda']);
Route::delete('/agenda/agendaExcluir/{id}', [agendaController::class, 'deleteAgenda']);

// Rotas de Procedimentos
Route::get('/procedimentos', [procedimentosController::class, 'index']);
Route::post('/procedimentos', [procedimentosController::class, 'gravarProcedimento']);
Route::post('/procedimentos/editarProcedimento', [procedimentosController::class, 'editarProcedimento']);
Route::get('/procedimentos/{id}', [procedimentosController::class, 'show']);
Route::delete('/procedimentos/excluirProcedimento/{id}', [procedimentosController::class, 'excluirProcedimento']);

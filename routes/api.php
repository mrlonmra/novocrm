<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\clienteController;
use App\Http\Controllers\usuarioController;
use App\Http\Controllers\agendaController;
use App\Http\Controllers\procedimentosController;

Route::get('/clientes', [clienteController::class, 'index']);
// Rota para obter todos os clientes
// Quando uma requisição GET é feita para '/clientes', chama o método 'index' do 'clienteController'

Route::post('/clientes', [clienteController::class, 'gravarCliente']);
// Rota para gravar um novo cliente no banco de dados
// Quando uma requisição POST é feita para '/clientes', chama o método 'gravarCliente' do 'clienteController'

Route::post('/clientes/modalAgenda', [clienteController::class, 'gravarClienteModalAgenda']);
// Rota para gravar um novo cliente no banco de dados
// Quando uma requisição POST é feita para '/clientes', chama o método 'gravarCliente' do 'clienteController'

Route::post('/clientes/editarCliente', [clienteController::class, 'editarCliente']);
// Rota para editar um cliente no banco de dados

Route::delete('/clientes/excluirCliente/{id}', [clienteController::class, 'excluirCliente']);
// Rota para excluir um cliente no banco de dados


Route::get('/clientes/{id}', [clienteController::class, 'show']);
// Rota para obter informações de um cliente específico pelo seu ID
// Quando uma requisição GET é feita para '/clientes/{id}', chama o método 'show' do 'clienteController'
// O ID fornecido na URL é passado como parâmetro para o método 'show'


Route::get('/usuarios', [usuarioController::class, 'index']);
// Rota para obter todos os clientes
// Quando uma requisição GET é feita para '/clientes', chama o método 'index' do 'clienteController'

// Rota para gravar um novo cliente no banco de dados
// Quando uma requisição POST é feita para '/clientes', chama o método 'gravarCliente' do 'clienteController'
Route::post('/usuarios', [usuarioController::class, 'gravarUsuario']);


Route::get('/usuarios/{id}', [usuarioController::class, 'show']);

Route::post('/usuarios/editarUsuario', [usuarioController::class, 'editarUsuario']);

// Rota para obter todos os clientes
// Quando uma requisição GET é feita para '/clientes', chama o método 'index' do 'clienteController'
Route::get('/agenda', [agendaController::class, 'index']);


Route::post('/agenda', [agendaController::class, 'gravarAgenda']);

//rota para mostrar um agendamento especifico
Route::get('/agenda/{id}', [agendaController::class, 'show']);

//rota para editar um agendamento especifico
Route::post('/agenda/{id}', [agendaController::class, 'updateAgenda']);

//rota para excluir um agendamento especifico
Route::delete('/agenda/agendaExcluir/{id}', [agendaController::class, 'deleteAgenda']);

// Rota para obter todos os clientes
// Quando uma requisição GET é feita para '/procedimentos', chama o método 'index' do 'procedimentosController'
Route::get('/procedimentos', [procedimentosController::class, 'index']);


// Rota para gravar um novo cliente no banco de dados
// Quando uma requisição POST é feita para '/procedimentos', chama o método 'gravarProcedimento' do 'clienteController'
Route::post('/procedimentos', [procedimentosController::class, 'gravarProcedimento']);


// Rota para editar um cliente no banco de dados
Route::post('/procedimentos/editarProcedimento', [procedimentosController::class, 'editarProcedimento']);

//rota para mostrar um procedimento especifico
Route::get('/procedimentos/{id}', [procedimentosController::class, 'show']);

//rota para excluir um agendamento especifico
Route::delete('/procedimentos/excluirProcedimento/{id}', [procedimentosController::class, 'excluirProcedimento']);
<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::controller(LoginController::class)->group(function () {
    route::get('/login', 'index')->name('login.index');
    route::post('/login', 'store')->name('login.store');
    route::get('/logout', 'destroy')->name('login.destroy');
});
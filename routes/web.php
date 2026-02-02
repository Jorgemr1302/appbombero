<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;


Route::get('/', [App\Http\Controllers\AdminController::class, 'index'])->name('index');


Route::post('/Crear', [App\Http\Controllers\AdminController::class, 'agregarbombero'])->name('agregarbombero');

Route::post('/Registrar', [App\Http\Controllers\AdminController::class, 'registrarasistencia'])->name('registrarasistencia');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::post('/Loginadmin', [App\Http\Controllers\AdminController::class, 'ingresaradmin'])->name('ingresaradmin');


Route::post('/Generarpdf', [App\Http\Controllers\AdminController::class, 'generarpdf'])->name('generarpdf');
//holadd
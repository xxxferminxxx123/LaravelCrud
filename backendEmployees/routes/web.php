<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\EmploeeController;

Route::get('/', function () {
    return view('welcome'); 
});


Route::get('/employees', [EmployeeController::class, 'index']);

Route::match(['get', 'post'], '/employees/{id}', [EmployeeController::class, 'desactivarEmployee']);

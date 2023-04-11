<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('pdf', '\App\Http\Controllers\PdfController@index');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('customers/{id}','\App\Http\Controllers\CustomersController@show');
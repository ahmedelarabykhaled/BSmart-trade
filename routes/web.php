<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

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
    Route::resource('installments','\App\Http\Controllers\Admin\InstallmentsController');
    Route::get('order/installments/{customer_id}','\App\Http\Controllers\Admin\InstallmentsController@getCustomerInstallments');
});


Route::get('customers/{id}','\App\Http\Controllers\CustomersController@show');

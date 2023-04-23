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
    Route::resource('installments','\App\Http\Controllers\Admin\InstallmentsController',['as'=>'admin.installments']);
    Route::get('order/{order_id}/installments/{customer_id}','\App\Http\Controllers\Admin\InstallmentsController@getCustomerInstallments');
    Route::get('customer/orders/{customer_id}','\App\Http\Controllers\Admin\OrdersController@getCustomerOrders');
    Route::get('installment/{installment_id}/pay/penalty','\App\Http\Controllers\Admin\InstallmentsController@pay_penalty_form');
    Route::get('pay_installment_form/{installment_id}','\App\Http\Controllers\Admin\InstallmentsController@pay_installment_form')->name('pay_installment_form');

    Route::post('pay_installment/{installment_id}','\App\Http\Controllers\Admin\InstallmentsController@pay_installment')->name('pay_installment');
});


Route::get('customers/{id}','\App\Http\Controllers\CustomersController@show');
Route::get('update_isntallments','\App\Http\Controllers\Admin\InstallmentsController@update_installments');
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
    return redirect('/admin');
});

Route::group(['prefix' => 'admin'], function () {
//    Route::get('/test-results/update-read/{id}/{read}', 'App\\Http\\Controllers\\TestResultController@updateRead')->name('testResult.update.read');
//    Route::get('/test-results/get-result/{id}', 'App\\Http\\Controllers\\TestResultController@getResult')->name('testResult.get.result');
    Voyager::routes();
});

Route::get('/criarlink', function () {
    $target = '/home2/jocampos/public_html/insetimax/storage/app/public';
    $atalho = '/home2/jocampos/public_html/insetimax/public/storage';
    symlink ($target, $atalho);
    return "funciona";
});

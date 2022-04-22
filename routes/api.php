<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\TestTypeController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('job-function', 'App\Http\Controllers\JobFunctionController@getAll');//->middleware('cors');

Route::get('test-type/{slug}', 'App\Http\Controllers\TestTypeController@getQuestionAndAnswer');//->middleware('cors');

Route::get('test-result-answer/{id}', 'App\Http\Controllers\TestResultController@getResultJson');//->middleware('cors');

Route::post('test-result-answer', 'App\Http\Controllers\TestResultController@postResultAnswer');//->middleware('cors');
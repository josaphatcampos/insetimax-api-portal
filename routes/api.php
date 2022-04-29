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

Route::get('produtos', 'App\Http\Controllers\ProdutosController@index');//->middleware('cors');
Route::get('produto-categoria', 'App\Http\Controllers\ProdutosController@produtocategoria');//->middleware('cors');
Route::get('produto-procurados', 'App\Http\Controllers\ProdutosController@maisprocurados');//->middleware('cors');
Route::get('produto-procurados-portal', 'App\Http\Controllers\ProdutosController@maisprocuradosportal');//->middleware('cors');
Route::get('produto-lancamento', 'App\Http\Controllers\ProdutosController@lancamento');//->middleware('cors');
Route::get('produto', 'App\Http\Controllers\ProdutosController@produto');//->middleware('cors');
Route::get('categorias', 'App\Http\Controllers\ProdutosController@categorias');//->middleware('cors');

Route::get('blog', 'App\Http\Controllers\BlogsController@index');//->middleware('cors');
Route::get('noticia', 'App\Http\Controllers\BlogsController@noticia');//->middleware('cors');;
Route::get('noticias-recentes', 'App\Http\Controllers\BlogsController@recentes');//->middleware('cors');;

Route::get('site', 'App\Http\Controllers\SitesController@index');//->middleware('cors');;
Route::get('banner', 'App\Http\Controllers\BannerController@index');//->middleware('cors');;
Route::get('trabalhe-conosco', 'App\Http\Controllers\ContatosController@trabalheconosco');//->middleware('cors');;

Route::get('representantes', 'App\Http\Controllers\RepresentantesController@index');//->middleware('cors');
Route::get('representantes-estado', 'App\Http\Controllers\RepresentantesController@estado');//->middleware('cors');
Route::get('representantes-cidade', 'App\Http\Controllers\RepresentantesController@cidade');//->middleware('cors');
Route::get('representantes-search', 'App\Http\Controllers\RepresentantesController@search');//->middleware('cors');

Route::get('unidades', 'App\Http\Controllers\UnidadesController@index');//->middleware('cors');
Route::get('unidades-estado', 'App\Http\Controllers\UnidadesController@estado');//->middleware('cors');
Route::get('unidades-cidade', 'App\Http\Controllers\UnidadesController@cidade');//->middleware('cors');
Route::get('unidades-search', 'App\Http\Controllers\UnidadesController@search');//->middleware('cors');

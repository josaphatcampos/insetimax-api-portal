<?php

namespace App\Http\Controllers;

use App\Models\Categoria;
use App\Models\Produto;
use Illuminate\Http\Request;

class ProdutosController extends Controller
{
    //

    public function index(Request $request){
        $site = $request->get('site');

        $produtos = Produto::whereHas('site', function($q) use ($site) {
            $q->where('slug', '=', $site);
        })->get();


        return response()->json($produtos, 200);;
    }

    public function produto(Request $request){
        $site = $request->get('site');
        $slug = $request->get('slug');

        $produtos = Produto::where('slug', $slug)
        ->whereHas('site', function($q) use ($site) {
            $q->where('slug', '=', $site);
        })->get();


        return response()->json($produtos, 200);
    }

    public function produtocategoria(Request $request){
        $site = $request->get('site');
        $categoria = $request->get('categoria');

        $produtos = Produto::whereHas('categoria', function($q) use ($categoria) {
            $q->where('id', '=', $categoria);
        })->get();

        return response()->json($produtos, 200);;
    }

    public function maisprocurados(Request $request){
        $site = $request->get('site');

        $produtos = Produto::where('procurado', 1)
        ->whereHas('site', function($q) use ($site) {
            $q->where('slug', '=', $site);
        })->limit(4)->get();

        return response()->json($produtos, 200);;
    }

    public function lancamento(Request $request){
        $site = $request->get('site');

        $produtos = Produto::where('lancamento', 1)
            ->whereHas('site', function($q) use ($site) {
                $q->where('slug', '=', $site);
            })->limit(4)->get();

        return response()->json($produtos, 200);;
    }

    public function categorias(Request $request){
        $site = $request->get('site');

        $categorias = Categoria::whereHas('site', function($q) use ($site) {
                $q->where('slug', '=', $site);
            })->get();

        return response()->json($categorias, 200);;
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Unidade;
use Illuminate\Http\Request;

class UnidadesController extends Controller
{
    //
    public function index(Request $request){
        $site = $request->get('site');

        $unidades = Unidade::all();


        return response()->json($unidades, 200);
    }

    public function estado(Request $request){
        $site = $request->get('site');
        $estado = $request->get('estado');

        $unidades = Unidade::where('estado', $estado)->get();

        return response()->json($unidades, 200);
    }

    public function cidade(Request $request){
        $site = $request->get('site');
        $cidade = $request->get('cidade');

        $unidades = Unidade::where('cidade', $cidade)->get();

        return response()->json($unidades, 200);
    }

    public function search(Request $request){
        $site = $request->get('site');
        $search = $request->get('search');

        $search = str_replace(array(",", ".", "-"), '', $search);

        $buscaEstado = Unidade::where('estado', $search)->get();
        $buscaCidade = Unidade::where('cidade', $search)->get();
        $buscaCep = Unidade::where('cep', $search)->get();

        $resultado = Array();

        foreach ($buscaEstado as $item){
            array_push($resultado, $item);
        }
        foreach ($buscaCidade as $item){
            array_push($resultado, $item);
        }
        foreach ($buscaCep as $item){
            array_push($resultado, $item);
        }


        return response()->json($resultado, 200);
    }
}

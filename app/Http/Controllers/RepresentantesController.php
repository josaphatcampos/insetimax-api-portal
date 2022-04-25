<?php

namespace App\Http\Controllers;


use App\Models\Representante;
use Illuminate\Http\Request;

class RepresentantesController extends Controller
{
    //
    public function index(Request $request){
        $site = $request->get('site');

        $representante = Representante::all();


        return response()->json($representante, 200);
    }

    public function estado(Request $request){
        $site = $request->get('site');
        $estado = $request->get('estado');

        $representante = Representante::where('estado', $estado)->get();

        return response()->json($representante, 200);
    }

    public function cidade(Request $request){
        $site = $request->get('site');
        $cidade = $request->get('cidade');

        $representante = Representante::where('cidade', $cidade)->get();

        return response()->json($representante, 200);
    }

    public function search(Request $request){
        $site = $request->get('site');
        $search = $request->get('search');

        $search = str_replace(array(",", ".", "-"), '', $search);

        $buscaEstado = Representante::where('estado', $search)->get();
        $buscaCidade = Representante::where('cidade', $search)->get();
        $buscaCep = Representante::where('cep', $search)->get();

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

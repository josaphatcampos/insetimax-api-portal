<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContatosController extends Controller
{
    //
    public function contato(Request $request){
        dd($request->all());
    }

    public function trabalheconosco(Request $request){
        dd($request->all());
    }
}

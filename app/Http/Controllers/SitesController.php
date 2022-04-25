<?php

namespace App\Http\Controllers;

use App\Models\Site;
use Illuminate\Http\Request;

class SitesController extends Controller
{
    //
    public function index(Request $request){
        $site = $request->get('site');



        $sites = Site::where('slug', $site)->get();

        return response()->json($sites, 200);
    }
}

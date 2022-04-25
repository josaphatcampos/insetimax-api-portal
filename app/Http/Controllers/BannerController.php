<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    //
    public function index(Request $request){
        $site = $request->get('site');

        $banner = Banner::whereHas('site', function($q) use ($site) {
            $q->where('slug', '=', $site);
        })->get();


        return response()->json($banner, 200);;
    }
}

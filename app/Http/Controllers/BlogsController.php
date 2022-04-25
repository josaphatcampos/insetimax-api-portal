<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogsController extends Controller
{
    //
    public function index(Request $request){
        $site = $request->get('site');

        $blog = Blog::whereHas('site', function($q) use ($site) {
                $q->where('slug', '=', $site);
            })
            ->orderBy('created_at', 'desc')
            ->get();


        return response()->json($blog, 200);
    }

    public function recentes(Request $request){
        $site = $request->get('site');

        $blog = Blog::whereHas('site', function($q) use ($site) {
            $q->where('slug', '=', $site);
        })
            ->orderBy('created_at', 'desc')
            ->limit(4)
            ->get();


        return response()->json($blog, 200);
    }

    public function noticia(Request $request){
        $site = $request->get('site');
        $slug = $request->get('slug');

        $blog = Blog::where('slug', $slug)
            ->whereHas('site', function($q) use ($site) {
                $q->where('slug', '=', $site);
            })
            ->get();


        return response()->json($blog, 200);
    }
}

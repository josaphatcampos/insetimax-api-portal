<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Produto extends Model
{

    public function site(){
        return $this->belongsTo('App\Models\Site', 'site_id', 'id');
    }

    public function categoria(){
        return $this->belongsTo('App\Models\Categoria', 'categoria_id', 'id');
    }
}

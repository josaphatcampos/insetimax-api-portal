<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Blog extends Model
{
    public function site(){
        return $this->belongsTo('App\Models\Site', 'site_id', 'id');
    }
}

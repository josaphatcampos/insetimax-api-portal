<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Banner extends Model
{
    public function site(){
        return $this->belongsTo('App\Models\Site', 'site_id', 'id');
    }
}

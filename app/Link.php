<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Link extends Model
{
    protected $table='links';

    public function movie()
    {
        return $this->hasOne('App\Movie');
    }
}

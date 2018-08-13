<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Catergory extends Model
{
    protected $table = 'categories';

    public function posts()
    {
    	return $this->hasMany('App\Post');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classroom extends Model
{
    protected $table = "classroom";

    protected $fillable = [
        'caption',
        'image',
        'location',
        'status'
    ];
}

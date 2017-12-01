<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $table = "teachers";

    protected $fillable = [
        'name',
        'avatar',
        'position',
        'title',
        'description',
        'view_level',
        'status'
    ];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Introduction extends Model
{
    protected $table = "introductions";

    protected $fillable = [
        'title',
        'focus_img_url',
        'summary',
        'content',
        'slogan',
        'author',
        'status'
    ];
}

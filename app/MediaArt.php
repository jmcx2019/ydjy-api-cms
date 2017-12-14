<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MediaArt extends Model
{
    protected $table = "media_arts";

    protected $fillable = [
        'title',
        'focus_img_url',
        'content',
        'status'
    ];
}

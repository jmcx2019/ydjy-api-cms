<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Score extends Model
{
    protected $table = "college_scores";

    protected $fillable = [
        'name',
        'first',
        'second',
        'status'
    ];
}

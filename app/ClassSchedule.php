<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ClassSchedule extends Model
{
    protected $table = "class_schedules";

    protected $fillable = [
        'name',
        'description',
        'content',
        'semester',
        'fee',
        'type',
        'homepage_view',
        'status'
    ];
}

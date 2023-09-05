<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Day extends Model
{
    use HasFactory;

    /* Relations */
    public function lessons()
    {
        return $this->hasMany(Lesson::class);
    }
}

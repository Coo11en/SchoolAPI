<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Schedule extends Model
{
    use HasFactory;

    protected $fillable = [
        'lesson1',
        'lesson2',
        'lesson3',
        'lesson4',
        'lesson5',
        'lesson6',
    ];

    /* Relations */
    public function days()
    {
        return $this->belongsTo(Day::class);
    }

    public function classrooms()
    {
        return $this->belongsTo(Classroom::class);
    }
}

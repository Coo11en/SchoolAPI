<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

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
    public function days(): BelongsTo
    {
        return $this->belongsTo(Day::class);
    }

    public function classrooms(): BelongsTo
    {
        return $this->belongsTo(Classroom::class);
    }
}

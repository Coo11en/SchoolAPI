<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Day extends Model
{
    use HasFactory;

    protected  $table = 'days';
    protected $fillable = [
        'name',
    ];

    /* Relations */
    public function schedules()
    {
        return $this->hasMany(Schedule::class);
}

    public function classrooms()
    {
        return $this->belongsTo(Classroom::class);
    }
}

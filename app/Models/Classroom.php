<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Classroom extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    /* Relations */
    public function days(): HasMany
    {
        return $this->hasMany(Day::class,);
    }
    public function schedules()
    {
        return $this->hasMany(Schedule::class);
    }
}

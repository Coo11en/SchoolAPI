<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Classroom extends Model
{
    use HasFactory;
    protected  $table = 'classrooms';

//    public $incrementing = false;

    protected $fillable = [
        'name',
        'teachers_id',
    ];

    /* Relations */
    public function days(): HasMany
    {
        return $this->hasMany(Day::class,);
    }
    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
    public function teachers()
    {
        return $this->hasOne(Teacher::class);
    }
}

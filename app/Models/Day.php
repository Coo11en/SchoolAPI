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

    public $incrementing = false;

    protected $fillable = [
        'name',
    ];

    /* Relations */
    public function schedules()
    {
        return $this->hasMany(Schedule::class);
    }
    public function subjects()
    {
        return $this->belongsToMany(Subject::class, 'schedules', 'day_id', 'subject_id');
    }


    public function call_schedules()
    {
        return $this->belongsToMany(Call_schedule::class, 'schedules', 'day_id', 'call_schedule_id');
    }

    public function classrooms()
    {
        return $this->belongsTo(Classroom::class);
    }

}

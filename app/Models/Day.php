<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Day extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'days';

//    public $incrementing = false;

    protected $fillable = [
        'name',
    ];

    /* Relations */
    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
    public function subjects(): BelongsToMany
    {
        return $this->belongsToMany(Subject::class, 'schedules', 'day_id', 'subject_id');
    }


    public function callSchedules(): BelongsToMany
    {
        return $this->belongsToMany(CallSchedule::class, 'schedules', 'day_id', 'call_schedule_id');
    }

    public function classrooms(): BelongsToMany
    {
        return $this->belongsToMany(Classroom::class, 'schedules', 'day_id', 'classroom_id');
    }

}

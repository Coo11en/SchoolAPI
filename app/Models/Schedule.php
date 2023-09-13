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

    protected  $table = 'schedules';

    public $incrementing = false;

    protected $fillable = [
        'subject_id',
        'teacher_id',
        'week_day_name',
        'classroom_id',
        'call_schedule_id',
        'day_id',
    ];

    /* Relations */
    public function days()
    {
        return $this->belongsTo(Day::class);
    }

    public function classrooms(): BelongsTo
    {
        return $this->belongsTo(Classroom::class);
    }
    public function callSchedules(): BelongsTo
    {
        return $this->belongsTo(Call_schedule::class, 'call_schedule_id');
    }
    public function subjects(): BelongsTo
    {
        return $this->belongsTo(Subject::class, 'subject_id');
    }
    public function teachers(): BelongsTo
    {
        return $this->belongsTo(Teacher::class);
    }
}

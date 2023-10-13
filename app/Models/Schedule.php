<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Backpack\CRUD\app\Models\Traits\HasIdentifiableAttribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Schedule extends Model
{
    use CrudTrait;
    use HasIdentifiableAttribute;
    use HasFactory;

    protected  $table = 'schedules';

//    public $incrementing = false;

    protected $fillable = [
        'subject_id',
        'teacher_id',
        'week_day_name',
        'classroom_id',
        'call_schedule_id',
        'day_id',
    ];

    /* Relations */
    public function day(): BelongsTo
    {
        return $this->belongsTo(Day::class, 'day_id');
    }

    public function classroom(): BelongsTo
    {
        return $this->belongsTo(Classroom::class, 'classroom_id');
    }
    public function callSchedule(): BelongsTo
    {
        return $this->belongsTo(CallSchedule::class, 'call_schedule_id');
    }
    public function subject(): BelongsTo
    {
        return $this->belongsTo(Subject::class, 'subject_id');
    }
    public function teacher(): BelongsTo
    {
        return $this->belongsTo(Teacher::class, 'teacher_id');
    }
}

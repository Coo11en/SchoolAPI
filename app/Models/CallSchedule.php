<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class CallSchedule extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'call_schedules';

//    public $incrementing = false;

    protected $fillable = [
        'call_number',
        'start_time',
        'lesson_time',
    ];

    public function subjects(): BelongsToMany
    {
        return $this->belongsToMany(Subject::class, 'schedules', 'call_schedule_id', 'subject_id');
    }

    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class, 'call_schedule_id');
    }
}

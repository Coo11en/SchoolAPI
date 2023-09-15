<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Call_schedule extends Model
{
    use HasFactory;

    protected $table = 'call_schedules';

//    public $incrementing = false;

    protected $fillable = [
        'call_number',
        'start_time',
        'lesson_time',
    ];

    public function subjects()
    {
        return $this->belongsToMany(Subject::class, 'schedules', 'call_schedule_id', 'subject_id');
    }

    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
}

<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Subject extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'subjects';

//    public $incrementing = false;

    protected $fillable = [
        'name_subject',
    ];

//    public function call_schedules()
//    {
//        return $this->belongsToMany(CallSchedule::class, 'schedules', 'subject_id', 'call_schedule_id');
//    }

    public function schedules():HasMany
    {
        return $this->hasMany(Schedule::class, 'subject_id');
    }
}

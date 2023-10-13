<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Backpack\CRUD\app\Models\Traits\HasIdentifiableAttribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Classroom extends Model
{
    use CrudTrait;
    use HasFactory;
    protected  $table = 'classrooms';

//    public $incrementing = false;

    protected $fillable = [
        'name',
        'teachers_id',
        'cabinet_id'
    ];

    /* Relations */
//    public function days(): BelongsToMany
//    {
//        return $this->belongsToMany(Day::class, 'schedules', 'classroom_id', 'day_id');
//    }
    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
    public function teacher(): BelongsTo
    {
        return $this->belongsTo(Teacher::class);
    }
    public function cabinet(): BelongsTo
    {
        return $this->belongsTo(Cabinet::class);
    }
    public function students(): HasMany
    {
        return $this->hasMany(Student::class);
    }

}

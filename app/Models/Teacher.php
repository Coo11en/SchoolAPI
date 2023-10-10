<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Teacher extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'teachers';

//    public $incrementing = false;

    protected $fillable = [
        'user_id',
        'role_id',
        'name',
        'surname',
        'patronymic',
        'job_title',
        'speciality',
        'education',
        'totalExperience',
        'generalTeachingExperience',
        'qualification',
        'isAdministration',
        'main_photo_id',
    ];

    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
    public function photos(): BelongsTo
    {
        return $this->belongsTo(Photo::class, 'main_photo_id');
    }
    public function roles()
    {
        return $this->belongsTo(Roles::class);
    }
    public function users(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }
    public function classrooms()
    {
        return $this->hasMany(Classroom::class);
    }
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}

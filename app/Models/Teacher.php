<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Teacher extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'teachers';

//    public $incrementing = false;

    protected $fillable = [
        'username',
        'password',
        'name',
        'surname',
        'patronymic',
        'job_title',
        'role_id',
        'email',
        'phone',
        'birthday',
        'main_photo_id',
        'token',
    ];

    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
    public function photos(): HasMany
    {
        return $this->hasMany(Photo::class);
    }
    public function roles()
    {
        return $this->belongsTo(Roles::class);
    }

}

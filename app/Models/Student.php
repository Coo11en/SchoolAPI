<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Student extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'students';
    //protected $guarded = ['id'];

    protected $appends = ['full_name'];

    protected $fillable = [
        'user_id',
        'name',
        'surname',
        'patronymic',
        'classroom_id'
    ];

    public function getFullNameAttribute()
    {
        return $this->surname . ' ' . $this->name . ' ' . $this->patronymic;
    }

    public function parent(): BelongsToMany
    {
        return $this->belongsToMany(
            Parents::class,
            'parent_student',
            'student_id',
            'parent_id');
    }

    public function classroom(): BelongsTo
    {
        return $this->belongsTo(Classroom::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}

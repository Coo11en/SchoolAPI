<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Parents extends Model
{
    use HasFactory;

    protected $table = 'parents';

//    public $incrementing = false;

    protected $fillable = [
        'username',
        'password',
        'name',
        'surname',
        'patronymic',
        'email',
        'phone',
        'token',
    ];

    public function students()
    {
        return $this->belongsToMany(Student::class, 'parent_student', 'parent_id', 'student_id');
    }


    /*
     public function parents_connection(): BelongsToMany
    {
        return $this->belongsToMany(Parents_connection::class, 'parent_has_student',
            'id', 'parent_id');
    }
    */
}

<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Student extends Model
{
    use HasFactory;

    protected $table = 'students';

//    public $incrementing = false;

    protected $fillable = [
        'user_id',
        'name',
        'surname',
        'patronymic'
    ];

    public function parents(): BelongsToMany
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
    public function avatar(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}

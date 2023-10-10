<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Parents extends Model
{
    use HasFactory;

    protected $table = 'parents';

//    public $incrementing = false;

    protected $fillable = [
        'user_id',
        'name',
        'surname',
        'patronymic'
    ];

    public function students(): BelongsToMany
    {
        return $this->belongsToMany(
            Student::class,
            'parent_student',
            'parent_id',
            'student_id');
    }
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /*
     public function parents_connection(): BelongsToMany
    {
        return $this->belongsToMany(Parents_connection::class, 'parent_has_student',
            'id', 'parent_id');
    }
    */
}

<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Student extends Model
{
    use HasFactory;

    protected $table = 'students';

    protected $fillable = [
      'username',
      'password',
      'token',
    ];

    public function parents()
    {
        return $this->belongsToMany(Parents::class, 'parents_connection', 'student_id', 'parent_id');
    }


    /*
    public function parents_connection(): BelongsToMany
    {
        return $this->belongsToMany(Parents_connection::class, 'student_has_parent',
            'id', 'student_id');
    }
    */
}

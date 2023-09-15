<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    use HasFactory;

    protected $table = 'roles';

//    public $incrementing = false;

    protected $fillable = [
        'role_name',
    ];

    public function teachers()
    {
        return $this->hasOne(Teacher::class);
    }
}

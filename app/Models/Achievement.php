<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Achievement extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'achievements';

//    public $incrementing = false;

    protected $fillable = [
        'name',
        'value',
    ];

}

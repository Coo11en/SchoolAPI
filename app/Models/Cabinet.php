<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cabinet extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'cabinets';

    protected $fillable = [
        'name',
        'description',
        'images'
    ];

}

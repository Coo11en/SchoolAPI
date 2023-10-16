<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docimage_section extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'docimage_section';

    protected $fillable = [
        'docimage_id',
        'section_id'
    ];
}

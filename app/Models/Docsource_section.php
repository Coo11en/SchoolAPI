<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docsource_section extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'docsource_section';

    protected $fillable = [
        'docsource_id',
        'section_id'
    ];
}

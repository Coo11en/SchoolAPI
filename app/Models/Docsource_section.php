<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docsource_section extends Model
{
    use HasFactory;

    protected $table = 'docsource_section';

    protected $fillable = [
        'docsource_id',
        'section_id'
    ];
}

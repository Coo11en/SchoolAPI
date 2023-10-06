<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docimage_section extends Model
{
    use HasFactory;

    protected $table = 'docimage_section';

    protected $fillable = [
        'docimage_id',
        'section_id'
    ];
}

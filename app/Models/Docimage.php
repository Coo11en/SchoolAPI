<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docimage extends Model
{
    use HasFactory;

    protected $table = 'docimages';

    protected $fillable = [
        'documentName',
        'documentSource',
        'documentType'
    ];

    public function sections()
    {

        return $this->belongsToMany(Section::class);
    }

}

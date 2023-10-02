<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Chapter extends Model
{
    use HasFactory;

    protected $table = 'chapters';
    //public $timestamps = false;

    protected $fillable = [
        'id',
        'slug',
        'chapterTitle',
        'status'
    ];

    public function sections(): HasMany
    {
        return $this->hasMany(Section::class);
    }
}

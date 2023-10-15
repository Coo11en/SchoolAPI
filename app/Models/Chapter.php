<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Chapter extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'chapters';

    protected $fillable = [
        'id',
        'slug',
        'chapterTitle',
        'status'
    ];

    public function section(): HasMany
    {
        return $this->hasMany(Section::class);
    }
}

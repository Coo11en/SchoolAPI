<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Album extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'albums';

//    public $incrementing = false;

    protected $fillable = [
        'name',
        'description',
    ];

    public function photos(): BelongsToMany
    {
        return $this->belongsToMany(
            Photo::class,
            'album_photo',
        )->withPivot('main_img');
    }

    public function news(): HasOne
    {
        return $this->hasOne(News::class, 'album_id');
    }

    public function mainImg(): BelongsToMany
    {
        return $this->belongsToMany(Photo::class)->withPivot('main_img')->wherePivot('main_img', 1);
    }

    public function updateMainImg(): BelongsToMany
    {
        return $this->belongsToMany(Photo::class, 'album_photo')->withPivot('main_img');
    }
}

<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Album extends Model
{
    use HasFactory;

    protected $hidden = ['pivot'];
    protected $fillable = [
      'name',
      'nameEng',
      'mainImage',
      'images'
    ];

    protected function images(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => json_decode($value, true),
            set: fn ($value) => json_encode($value),
        );
    }

    public function photos(): BelongsToMany
    {
        return $this->belongsToMany(Photo::class, 'album_photo', 'album_id', 'photo_id')
            ->select('img');
    }

    public function imgMain (): BelongsTo
    {
        return $this->belongsTo(Photo::class,'main_img')->select('img');
    }
}

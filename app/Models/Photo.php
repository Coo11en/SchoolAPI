<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Photo extends Model
{
    use HasFactory;

    protected $hidden = ['pivot'];
    protected $fillable = [
        'img'
    ];

    public function albums(): BelongsToMany
    {
        return $this->belongsToMany(Album::class, 'album_photo', 'photo_id', 'album_id');
    }


}

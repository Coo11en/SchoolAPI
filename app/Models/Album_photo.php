<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Album_photo extends Model
{
    use HasFactory;

    protected  $table = 'album_photo';
    protected $fillable = [
        'photo_id',
        'album_id',
    ];

    public function photos()
    {
        return $this->hasMany(Photo::class);
    }

    public function albums()
    {
        return $this->belongsTo(Album::class);
    }
}

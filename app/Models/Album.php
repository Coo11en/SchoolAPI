<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    use HasFactory;

    protected  $table = 'albums';

    public $incrementing = false;

    protected $fillable = [
        'name',
        'description',
    ];

    public function album_photos()
    {
        return $this->hasMany(Album_photo::class);
    }

    public function news()
    {
        return $this->belongsTo(News::class);
    }
}

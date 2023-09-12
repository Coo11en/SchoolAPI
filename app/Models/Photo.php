<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use HasFactory;

    protected  $table = 'photos';

    public $incrementing = false;

    protected $fillable = [
        'img',
    ];

    public function teachers()
    {
        return $this->hasOne(Teacher::class);
    }

    public function album_photos()
    {
        return $this->belongsTo(Album_photo::class);
    }

}

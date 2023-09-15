<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Album_photo extends Model
{
    use HasFactory;

    protected  $table = 'album_photo';

//    public $incrementing = false;

    protected $fillable = [
        'photo_id',
        'main_img',
        'album_id',
    ];
}

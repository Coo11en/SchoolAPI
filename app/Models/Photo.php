<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Photo extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'photos';

//    public $incrementing = false;

    protected $fillable = [
        'img',
    ];

    public function teachers(): HasOne
    {
        return $this->hasOne(Teacher::class, 'main_photo_id');
    }

    public function albums()
    {
        return $this->belongsToMany(
            Album::class,
            'album_photo',
        );
    }
}

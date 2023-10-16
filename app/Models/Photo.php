<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Intervention\Image\ImageManagerStatic as Image;

class Photo extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'photos';

//    public $incrementing = false;

    protected $fillable = [
        'img',
    ];

    protected $casts = [
        'photos' => 'array'
    ];

    public function teacher(): HasOne
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

    public static function boot()
    {
        parent::boot();
        static::deleted(function($obj) {
            \Storage::disk('public_folder')->delete($obj->image);
        });
    }

//    public function setImgAttribute($value)
//    {
//        $attribute_name = "img";
//        $disk = "public";
//        $destination_path = "data/photo/album";
//
//        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path, $fileName = null);
//
//        $this->attributes[$attribute_name] = $_SERVER['APP_URL'] . '/' . 'storage/' . $this->attributes[$attribute_name];
//    }
}

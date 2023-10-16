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
use Lagoon\Sand\app\Helpers\UploadHelper;

class Photo extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'photos';

//    public $incrementing = false;

    protected $fillable = [
        'img',
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
            Storage::disk('public')->delete($obj->img);
        });
    }


    /*
    |--------------------------------------------------------------------------
    | MUTATORS
    |--------------------------------------------------------------------------
    */
    public function setImgAttribute($value){
        $fieldName = UploadHelper::getAttribute(__FUNCTION__);
        $this->attributes[$fieldName] = UploadHelper::uploadImage($value, $this->attributes[$fieldName] ?? null, 'public', 'photos', '1200');
    }
}

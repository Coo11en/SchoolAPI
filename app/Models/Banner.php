<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Banner extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'banners';

    protected $fillable = [
        'chapter_id',
        'bannerTitle',
        'img',
        'ref'
    ];

    public function chapter()
    {
        return $this->belongsTo(Chapter::class, 'chapter_id');
    }

    public static function boot()
    {
        parent::boot();
        static::deleted(function($obj) {
            \Storage::disk('public_folder')->delete($obj->image);
        });
    }

    public function setImgAttribute($value)
    {
        $attribute_name = "img";
        $disk = "public";
        $destination_path = "data/documents";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path, $fileName = null);

        $this->attributes[$attribute_name] = $_SERVER['APP_URL'] . '/' . 'storage/' . $this->attributes[$attribute_name];
    }
}

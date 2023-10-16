<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Docsource extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'docsources';

    protected $fillable = [
        'documentName',
        'documentSource',
        'documentType'
    ];

    public function sections()
    {
        return $this->belongsToMany(Section::class);
    }

    public static function boot()
    {
        parent::boot();
        static::deleted(function($obj) {
            \Storage::disk('public_folder')->delete($obj->image);
        });
    }

    public function setdocumentSourceAttribute($value)
    {
        $attribute_name = "documentSource";
        $disk = "public";
        $destination_path = "data/documents";

        $this->uploadFileToDisk($value, $attribute_name, $disk, $destination_path, $fileName = null);

        $this->attributes[$attribute_name] = $_SERVER['APP_URL'] . '/' . 'storage/' . $this->attributes[$attribute_name];
    }
}


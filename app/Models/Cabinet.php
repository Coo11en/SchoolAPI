<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Lagoon\Sand\app\Casts\Json;

class Cabinet extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'cabinets';

    protected $appends = [
        'view_img'
    ];

    protected $fillable = [
        'name',
        'number',
        'description',
        'images'
    ];

    protected $casts = [
        'images' => Json::class
    ];

    public function getViewImgAttribute()
    {
        return implode(',', json_decode($this->images));
    }

}

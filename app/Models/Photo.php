<?php
declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'photos';

//    public $incrementing = false;

    protected $fillable = [
        'img',
    ];

    public function teachers()
    {
        return $this->hasOne(Teacher::class);
    }

    public function albums()
    {
        return $this->belongsToMany(Album::class);
    }

}

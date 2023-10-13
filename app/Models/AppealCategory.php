<?php

declare(strict_types=1);

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AppealCategory  extends Model
{
    use CrudTrait;
    use HasFactory;

    protected  $table = 'appeals_categories';

//    public $incrementing = false;

    protected $fillable = [
        'name',
        'description',
    ];

    public function appeals()
    {
        return $this->hasMany(Appeal::class);
}

}

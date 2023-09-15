<?php

declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Appeals_category  extends Model
{
    use HasFactory;

    protected  $table = 'appeal_categories';

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

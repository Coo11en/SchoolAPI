<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categories_appeal  extends Model
{
    use HasFactory;

    protected  $table = 'categories_appeals';

    public $incrementing = false;

    protected $fillable = [
        'name',
        'description',
    ];

    public function appeals()
    {
        return $this->hasMany(Appeal::class);
}

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Menu_basic extends Model
{
    use HasFactory;

    protected  $table = 'menu_basics';

//    public function menu_item(): BelongsToMany {
//        return $this->belongsToMany(Menu_item::class, 'menus');
//    }
}

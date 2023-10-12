<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Menu_item extends Model
{
    use HasFactory;

    protected $table = 'menu_items';

//    public function menu_basic(): BelongsToMany {
//        return $this->belongsToMany(Menu_basic::class, 'menus');
//    }
}

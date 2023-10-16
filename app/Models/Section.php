<?php

namespace App\Models;

use Backpack\CRUD\app\Models\Traits\CrudTrait;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Section extends Model
{
    use CrudTrait;
    use HasFactory;

    protected $table = 'sections';

    protected $fillable = [
        'chapter_id',
        'sectionTitle',
        'sectionText',
        'sequence',
        'status'
    ];

    public function chapter():BelongsTo
    {
        return $this->belongsTo(Chapter::class,'chapter_id');
    }

    public function docimages()
    {
        return $this->belongsToMany(Docimage::class);
    }

    public function docsources()
    {
        return $this->belongsToMany(Docsource::class);
    }

}

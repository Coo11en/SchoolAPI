<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Section extends Model
{
    use HasFactory;

    protected $table = 'sections';

    protected $fillable = [
        'chapter_id',
        'sectionTitle',
        'sectionText',
        'sequence',
        'status'
    ];

    public function chapters():BelongsTo
    {
        return $this->belongsTo(Chapter::class);
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

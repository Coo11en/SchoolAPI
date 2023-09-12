<?php
declare(strict_types=1);

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Call_schedule extends Model
{
    use HasFactory;

    protected $table = 'call_schedule';

    public $incrementing = false;

    protected $fillable = [
        'call_number',
        'start_time',
        'lesson_time',
    ];

    public function schedules(): HasMany
    {
        return $this->hasMany(Schedule::class);
    }
}

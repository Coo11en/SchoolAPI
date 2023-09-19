<?php

namespace Database\Factories;

use App\Models\Album;
use App\Models\Photo;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Album_photo>
 */
class Album_photoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'photo_id' => Photo::factory(),
            'main_img' => 0,
            'album_id' => Album::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

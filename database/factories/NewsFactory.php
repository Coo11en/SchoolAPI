<?php

namespace Database\Factories;

use App\Models\Album;
use App\Models\News_category;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Enums\NewsStatus;

class NewsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->word(),
            'description' => fake()->text(100),
            'author' => fake()->userName(),
            'text' => fake()->text(1000),
            'news_category_id' => News_category::factory(),
            'album_id' => Album::first()->id,
            'source' => json_encode([
                ['url' => fake()->url(),'text' => fake()->text(30)],
                ['url' => fake()->url(), 'text' => fake()->text(30)]
            ]),
            'status' => NewsStatus::ACTIVE->value,
            'video' => fake()->imageUrl(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

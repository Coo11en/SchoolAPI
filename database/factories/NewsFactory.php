<?php

namespace Database\Factories;

use App\Models\Album;
use App\Models\News_categories;
use Illuminate\Database\Eloquent\Factories\Factory;

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
            'id' => $this->faker->uuid(),
            'title' => $this->faker->word(),
            'description' => fake()->text(100),
            'author' => fake()->userName(),
            'news_categories_id' => News_categories::factory(),

            'album_id' => Album::factory(),

            'resource' => fake()->text(100),
            'status' => true,
            'video' => fake()->imageUrl(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

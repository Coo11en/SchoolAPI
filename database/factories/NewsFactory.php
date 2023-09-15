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
            'news_category_id' => News_category::factory(),
            'album_id' => Album::first()->id,
            'resource' => fake()->text(100),
            'status' => NewsStatus::ACTIVE->value,
            'video' => fake()->imageUrl(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

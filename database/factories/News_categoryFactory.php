<?php

namespace Database\Factories;

use App\Models\News_category;
use Illuminate\Database\Eloquent\Factories\Factory;

class News_categoryFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->word(),
            'description' => fake()->text(100),
            'image' => fake()->imageUrl(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

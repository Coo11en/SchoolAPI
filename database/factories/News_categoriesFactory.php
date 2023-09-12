<?php

namespace Database\Factories;

use App\Models\News_categories;
use Illuminate\Database\Eloquent\Factories\Factory;

class News_categoriesFactory extends Factory
{
    public function definition(): array
    {
        return [
            'id' => $this->faker->uuid(),
            'name' => $this->faker->word(),
            'description' => fake()->text(100),
            'image' => fake()->imageUrl(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

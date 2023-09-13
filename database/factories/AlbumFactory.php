<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class AlbumFactory extends Factory
{
    public function definition(): array
    {
        return [
            'id' => $this->faker->uuid(),
            'name' => $this->faker->word(),
            'description' => fake()->text(100),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
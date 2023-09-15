<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class AlbumFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->word(),
            'description' => fake()->text(100),
            'nameEng' => fake()->word(),
            'relationship' => false,
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

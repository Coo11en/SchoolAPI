<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PhotoFactory extends Factory
{
    public function definition(): array
    {


        return [
            'img' => fake()->imageUrl(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

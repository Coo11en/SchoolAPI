<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class AchievementFactory extends Factory
{
    public function definition(): array
    {
        return [
            'name' => $this->faker->word(),
            'value' => $this->faker->word(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

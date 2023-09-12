<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
 */
class Categories_appealFactory extends Factory
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
            'name'=> fake()->text(200),
            'description' => fake()->text(1000),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

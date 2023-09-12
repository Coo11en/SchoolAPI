<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
 */
class Call_scheduleFactory extends Factory
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
            'call_number' => $this->faker->numberBetween(1,8),
            'start_time' => fake()->time,
            'lesson_time' => '45',
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

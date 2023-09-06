<?php

namespace Database\Factories;

use App\Models\Classroom;
use App\Models\Day;
use Illuminate\Database\Eloquent\Factories\Factory;
use JetBrains\PhpStorm\ArrayShape;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Schedule>
 */
class ScheduleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'lesson1' => $this->faker->word(),
            'lesson2' => $this->faker->word(),
            'lesson3' => $this->faker->word(),
            'lesson4' => $this->faker->word(),
            'lesson5' => $this->faker->word(),
            'day_id' => Day::factory(),
            'classroom_id' => Classroom::first()->id
        ];
    }
}

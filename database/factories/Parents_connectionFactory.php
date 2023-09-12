<?php

namespace Database\Factories;

use App\Models\Parents;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
 */
class Parents_connectionFactory extends Factory
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
            'parent_id' => Parents::factory(),
            'student_id' => Student::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

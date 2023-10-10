<?php

namespace Database\Factories;

use App\Models\Classroom;
use App\Models\News_category;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Classroom>
 */
class ClassroomFactory extends Factory
{
    protected $model = Classroom::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'teacher_id' => Teacher::factory(),
            'cabinet_id' => $this->faker->numberBetween(1,3),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

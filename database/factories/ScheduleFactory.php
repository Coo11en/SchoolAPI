<?php

namespace Database\Factories;

use App\Models\Call_schedule;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
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
            'id' => $this->faker->uuid(),
            'subjects_id' => Subject::factory(),
            'teachers_id' => Teacher::factory(),
            'week_day_name' => $this->faker->dayOfWeek,
            'classroom_id' => Classroom::factory(),
            'call_schedule_id' => Call_schedule::factory(),
            'days_id' => Day::factory(),
            'created_at' => now(),
            'updated_at' => now(),


            //'classroom_id' => Classroom::first()->id
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\CallSchedule;
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
            'subject_id' => Subject::factory(),
            'teacher_id' => Teacher::factory(),
            'week_day_name' => $this->faker->dayOfWeek,
            'classroom_id' => Classroom::factory(),
            'call_schedule_id' => CallSchedule::factory(),
            'day_id' => Day::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\CallSchedule;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\Schedule;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Database\Seeder;

class ScheduleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Seed 4 lessons every day for 2 classrooms
        for ($i=0; $i<2;$i++) {
            for ($k=1; $k<7; $k++) {
                for ($j = 1; $j < 5; $j++) {
                    Schedule::factory()->state([
                        'subject_id' => Subject::all()->random()->id,
                        'teacher_id' => Teacher::all()[$i]->id,
                        'week_day_name' => Day::find($k)->name,
                        'classroom_id' => Classroom::all()[$i]->id,
                        'call_schedule_id' => CallSchedule::all()->where('call_number', '=', $j)->first()->id,
                        'day_id' => $k
                    ])->create();
                }
            }
        }
    }
}

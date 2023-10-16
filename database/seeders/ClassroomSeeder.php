<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Cabinet;
use App\Models\Classroom;
use App\Models\Teacher;
use Illuminate\Database\Seeder;

class ClassroomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Seed 2 classrooms
        Classroom::factory()->state([
            'name' => '1a',
            'teacher_id' => Teacher::all()[0]->id,
            'cabinet_id' => Cabinet::all()[0]->id
        ])->create();
        Classroom::factory()->state([
            'name' => '2a',
            'teacher_id' => Teacher::all()[0]->id,
            'cabinet_id' => Cabinet::all()[1]->id
        ])->create();
    }
}

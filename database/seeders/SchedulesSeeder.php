<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Classroom;
use App\Models\Day;
//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SchedulesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('classrooms')->insert($this->getClassroomsData());
        DB::table('days')->insert($this->getDaysData());
        DB::table('schedules')->insert($this->getSchedulesData());
    }

    public function getClassroomsData(): array
    {
        $response = [];
        for ($i=1; $i<3; $i++) {
            $response[] = [
              'name' => $i.'a'
            ];
        }
        return $response;
    }
    public function getDaysData(): array
    {
        return [
            [ 'name' => 'Понедельник', 'classroom_id' => Classroom::first()->id],
            [ 'name' => 'Вторник', 'classroom_id' => Classroom::first()->id],
            [ 'name' => 'Среда', 'classroom_id' => Classroom::first()->id],
            [ 'name' => 'Четверг', 'classroom_id' => Classroom::first()->id],
            [ 'name' => 'Пятница', 'classroom_id' => Classroom::first()->id],
            [ 'name' => 'Понедельник', 'classroom_id' => Classroom::first()->id+1],
            [ 'name' => 'Вторник', 'classroom_id' => Classroom::first()->id+1],
            [ 'name' => 'Среда', 'classroom_id' => Classroom::first()->id+1],
            [ 'name' => 'Четверг', 'classroom_id' => Classroom::first()->id+1],
            [ 'name' => 'Пятница', 'classroom_id' => Classroom::first()->id+1],
        ];
    }

    public function getSchedulesData(): array
    {

        $response = [];
        for ($i=0;$i<2;$i++) {
            for ($j = 0; $j < 5; $j++) {
                $response[] = [
                    'lesson1' => fake()->word(),
                    'lesson2' => fake()->word(),
                    'lesson3' => fake()->word(),
                    'lesson4' => fake()->word(),
                    'lesson5' => fake()->word(),
                    'day_id' => Day::first()->id + $j + $i*5,
                    'classroom_id' => Classroom::first()->id + $i
                ];
            }
        }
        return $response;
    }
}

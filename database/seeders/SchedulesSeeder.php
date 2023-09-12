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
//        DB::table('days')->insert($this->getDaysData());
//        DB::table('schedules')->insert($this->getSchedulesData());
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
            [ 'name' => 'Понедельник', 'classroom_id' => Classroom::last()->id],
            [ 'name' => 'Вторник', 'classroom_id' => Classroom::last()->id],
            [ 'name' => 'Среда', 'classroom_id' => Classroom::last()->id],
            [ 'name' => 'Четверг', 'classroom_id' => Classroom::last()->id],
            [ 'name' => 'Пятница', 'classroom_id' => Classroom::last()->id],
        ];
    }

    public function getSchedulesData(): array
    {

        $response = [];
        for ($i=0;$i<2;$i++) {
            for ($j = 0; $j < 5; $j++) {
                $response[] = [
                    'day_id' => Day::first()->id + $j + $i*5,
                    'classroom_id' => Classroom::first()->id + $i,
                    'teacher_id' => Classroom::find(Classroom::first()->id + $i)->teacher_id
                ];
            }
        }
        return $response;
    }
}

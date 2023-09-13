<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Appeal;
use App\Models\Call_schedule;
use App\Models\Categories_appeal;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\News;
use App\Models\News_categories;
use App\Models\Parents;
use App\Models\Photo;
use App\Models\Roles;
use App\Models\Schedule;
use App\Models\Student;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use function Symfony\Component\HttpKernel\Log\format;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
// Seed 10 Photo
        Photo::factory(10)->create();
// Seed 3 Roles
        DB::table('roles')->insert($this->getRolesData());
// Seed 2 Teachers
        Teacher::factory(2)
            ->state(['role_id' => Roles::where('role_name', '=', 'Учитель')->first()->id])
            ->create();
// Seed 2 classrooms
        Classroom::factory()->state(['name' => '1a', 'teacher_id' => Teacher::all()[0]->id])->create();
        Classroom::factory()->state(['name' => '2a', 'teacher_id' => Teacher::all()[1]->id])->create();
// Seed 10 Days
        for ($i=0; $i<2; $i++) {
            Day::factory()->state(['name' => 'Понедельник', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Вторник', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Среда', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Четверг', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Пятница', 'classroom_id' => Classroom::all()[$i]->id])->create();
        }

// Seed 4 Call_schedules
        Call_schedule::factory()->state(['call_number' => 1, 'start_time' => '8:30', 'lesson_time' => 45])->create();
        Call_schedule::factory()->state(['call_number' => 2, 'start_time' => '9:30', 'lesson_time' => 45])->create();
        Call_schedule::factory()->state(['call_number' => 3, 'start_time' => '10:30', 'lesson_time' => 45])->create();
        Call_schedule::factory()->state(['call_number' => 4, 'start_time' => '11:30', 'lesson_time' => 45])->create();
// Seed 11 Subjects
        Subject::factory()->state(['name_subject' => 'Русский язык'])->create();
        Subject::factory()->state(['name_subject' => 'Литература'])->create();
        Subject::factory()->state(['name_subject' => 'История'])->create();
        Subject::factory()->state(['name_subject' => 'Химия'])->create();
        Subject::factory()->state(['name_subject' => 'Физическая культура'])->create();
        Subject::factory()->state(['name_subject' => 'География'])->create();
        Subject::factory()->state(['name_subject' => 'Физика'])->create();
        Subject::factory()->state(['name_subject' => 'Иностранный язык'])->create();
        Subject::factory()->state(['name_subject' => 'Начертательная геометрия'])->create();
        Subject::factory()->state(['name_subject' => 'Биология'])->create();
        Subject::factory()->state(['name_subject' => 'Рисование'])->create();
// Seed 40 Schedules
        for ($i=0; $i<2;$i++) {
            for ($j = 1; $j < 5; $j++) {
                Schedule::factory()->state([
                    'subject_id' => Subject::all()->random()->id,
                    'teacher_id' => Teacher::all()[$i]->id,
                    'week_day_name' => Day::where('name', '=', 'Понедельник')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->name,
                    'classroom_id' => Classroom::all()[$i]->id,
                    'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                    'day_id' => Day::where('name', '=', 'Понедельник')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->id
                ])->create();
            }
        }
        for ($i=0; $i<2;$i++) {
            for ($j = 1; $j < 5; $j++) {
                Schedule::factory()->state([
                    'subject_id' => Subject::all()->random()->id,
                    'teacher_id' => Teacher::all()[$i]->id,
                    'week_day_name' => Day::where('name', '=', 'Вторник')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->name,
                    'classroom_id' => Classroom::all()[$i]->id,
                    'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                    'day_id' => Day::where('name', '=', 'Вторник')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->id
                ])->create();
            }
        }
        for ($i=0; $i<2;$i++) {
            for ($j = 1; $j < 5; $j++) {
                Schedule::factory()->state([
                    'subject_id' => Subject::all()->random()->id,
                    'teacher_id' => Teacher::all()[$i]->id,
                    'week_day_name' => Day::where('name', '=', 'Среда')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->name,
                    'classroom_id' => Classroom::all()[$i]->id,
                    'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                    'day_id' => Day::where('name', '=', 'Среда')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->id
                ])->create();
            }
        }
        for ($i=0; $i<2;$i++) {
            for ($j = 1; $j < 5; $j++) {
                Schedule::factory()->state([
                    'subject_id' => Subject::all()->random()->id,
                    'teacher_id' => Teacher::all()[$i]->id,
                    'week_day_name' => Day::where('name', '=', 'Четверг')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->name,
                    'classroom_id' => Classroom::all()[$i]->id,
                    'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                    'day_id' => Day::where('name', '=', 'Четверг')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->id
                ])->create();
            }
        }
        for ($i=0; $i<2;$i++) {
            for ($j = 1; $j < 5; $j++) {
                Schedule::factory()->state([
                    'subject_id' => Subject::all()->random()->id,
                    'teacher_id' => Teacher::all()[$i]->id,
                    'week_day_name' => Day::where('name', '=', 'Пятница')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->name,
                    'classroom_id' => Classroom::all()[$i]->id,
                    'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                    'day_id' => Day::where('name', '=', 'Пятница')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->id
                ])->create();
            }
        }

// Seed 5 news and 1 category
        News::factory()
            ->count(5)
            ->for(News_categories::factory()->state([
                'name' => 'School news',
            ]), 'news_categories')
            ->create();

//        Student::factory(5)
//            ->has(Parents::factory()->count(2))
//            ->create();


        //        \App\Models\Achievement::factory(5)->create();


//        Appeal::factory(5)
//            ->for(Categories_appeal::factory()->state([
//                'name' => 'Заявления',
//            ]), 'categories_appeals')
//            ->create();

//        \App\Models\Parents_connection::factory(5)->create();


//        $this->call([
//            SchedulesSeeder::class,
//
//        ]);

    }
    public function getRolesData(): array
    {
        $uuids = [];


        for ($i=0; $i<3; $i++) {
           $role = Roles::factory()->make();
           $uuids[] = $role->id;
        }
        return [
            ['id' => $uuids[0], 'role_name' => 'Учитель', 'created_at' => now(), 'updated_at' => now()],
            ['id' => $uuids[1],'role_name' => 'Студент', 'created_at' => now(), 'updated_at' => now()],
            ['id' => $uuids[2],'role_name' => 'Родитель', 'created_at' => now(), 'updated_at' => now()]
        ];
    }

}

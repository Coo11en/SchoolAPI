<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Album;
use App\Models\Appeal;
use App\Models\Call_schedule;
use App\Models\Appeals_category;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\News;
use App\Models\News_category;
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
// Seed 10 photo for 2 albums
        for ($i=1;$i<3;$i++) {
            $album = Album::factory()->state(['name' => 'Album '. $i])->create();
            $photos = Photo::factory(10)->create();
            $album->photos()->attach($photos);
        }

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
            Day::factory()->state(['name' => 'Суббота', 'classroom_id' => Classroom::all()[$i]->id])->create();
        }

// Seed Call_schedules
        $call_schedules = [
            ['call_number' => 1, 'start_time' => '8:30', 'lesson_time' => 45],
            ['call_number' => 2, 'start_time' => '9:30', 'lesson_time' => 45],
            ['call_number' => 3, 'start_time' => '10:30', 'lesson_time' => 45],
            ['call_number' => 4, 'start_time' => '11:30', 'lesson_time' => 45],
            ['call_number' => 5, 'start_time' => '13:00', 'lesson_time' => 45],
            ['call_number' => 6, 'start_time' => '14:00', 'lesson_time' => 45],
            ['call_number' => 7, 'start_time' => '15:00', 'lesson_time' => 45],
            ['call_number' => 8, 'start_time' => '16:00', 'lesson_time' => 45],
        ];
        foreach ($call_schedules as $call_schedule)
        Call_schedule::factory()->state([
            'call_number' => $call_schedule['call_number'],
            'start_time' => $call_schedule['start_time'],
            'lesson_time' => $call_schedule['lesson_time']
        ])->create();

// Seed Subjects
        $subjects = [
            "Русский язык",
            "Литературное чтение",
            "Физическая культура",
            "Лингвистический практикум по иностранному языку",
            "Осмысленное чтение",
            "Технология",
            "Физика",
            "Разговоры о важном",
            "Немецкий язык",
            "Основы безопасности жизнедеятельности",
            "История России. Всеобщая история",
            "Основы духуовно-нравственных культур народов России",
            "Изобразительное искусство",
            "Основы религиозных культур и светской этики",
            "Литература",
            "Английский язык",
            "Математика",
            "География",
            "Химия",
            "Обществознание"
        ];
        foreach ($subjects as $subject) {
            Subject::factory()->state(['name_subject' => $subject])->create();
        }

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
        for ($i=0; $i<2;$i++) {
            for ($j = 1; $j < 5; $j++) {
                Schedule::factory()->state([
                    'subject_id' => Subject::all()->random()->id,
                    'teacher_id' => Teacher::all()[$i]->id,
                    'week_day_name' => Day::where('name', '=', 'Суббота')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->name,
                    'classroom_id' => Classroom::all()[$i]->id,
                    'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                    'day_id' => Day::where('name', '=', 'Суббота')->where('classroom_id', '=', Classroom::all()[$i]->id)->first()->id
                ])->create();
            }
        }

// Seed 5 news and 1 category
        News::factory()
            ->count(5)
            ->for(News_category::factory()->state([
                'name' => 'School news',
            ]), 'newsCategories')
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

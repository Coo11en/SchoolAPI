<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Appeal;
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
use App\Models\Teacher;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
//// Seed 10 Photo
//        Photo::factory(10)->create();
// Seed 3 Roles
        DB::table('roles')->insert($this->getRolesData());
// Seed 2 Teachers
        Teacher::factory(2)
            ->state(['role_id' => Roles::where('role_name', '=', 'Учитель')->first()->id])
            ->create();
// Seed 2 classrooms
        Classroom::factory()->state(['name' => '1a', 'teacher_id' => Teacher::all()[0]->id])->create();
        Classroom::factory()->state(['name' => '2a', 'teacher_id' => Teacher::all()[1]->id])->create();
// Sees 10 Days
        for ($i=0; $i<2; $i++) {
            Day::factory()->state(['name' => 'Понедельник', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Вторник', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Среда', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Четверг', 'classroom_id' => Classroom::all()[$i]->id])->create();
            Day::factory()->state(['name' => 'Пятница', 'classroom_id' => Classroom::all()[$i]->id])->create();
        }

        //        \App\Models\Achievement::factory(5)->create();


//        News::factory()
//            ->count(5)
//            ->for(News_categories::factory()->state([
//                'name' => 'School news',
//            ]), 'news_categories')
//            ->create();

//        Student::factory(5)
//            ->has(Parents::factory()->count(2))
//            ->create();

//     Schedule::factory(7)->create();
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

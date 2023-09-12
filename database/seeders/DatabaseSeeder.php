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
use App\Models\Schedule;
use App\Models\Student;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        Student::factory(5)
            ->has(Parents::factory()->count(2))
            ->create();

//        \App\Models\Roles::factory(3)->create();
//        \App\Models\Achievement::factory(5)->create();
//        \App\Models\Photo::factory(10)->create();

//        News::factory()
//            ->count(5)
//            ->for(News_categories::factory()->state([
//                'name' => 'School news',
//            ]), 'news_categories')
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
}

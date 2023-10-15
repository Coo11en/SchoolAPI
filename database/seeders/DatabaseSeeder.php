<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Banner;
use App\Models\User;
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

        $this->call([
            PhotoAlbumSeeder::class,
            RoleSeeder::class,
            CabinetSeeder::class,
            TeacherSeeder::class,
            ClassroomSeeder::class,
            DaySeeder::class,
            CallSchedulesSeeder::class,
            SubjectSeeder::class,
            ScheduleSeeder::class,
            NewsSeeder::class,
            StudentParentSeeder::class,
            MenuSeeder::class,
            AppealSeeder::class,
            ChapterDocSeeder::class,
        ]);

// Создание пользователей для авторизации
        // email:user@mail.ru password:123456
        // email:admin@mail.ru password:123456
        User::factory()->state([
            'email' => 'user@mail.ru',
            'password' => '123456'
        ])->create();
        User::factory()->state([
            'email' => 'admin@mail.ru',
            'password' => '123456'
        ])->create();


//Наполняем таблицу связей между users y roles
        for ($i = 1, $j=2 ; $i<22; $i++) {
            if ($i>8 && $i <12) $j = 3;
            if ($i>11 && $i<18) $j = 4;
            if ($i>17 && $i<20) $j = 3;
            if ($i>19 && $i<21) $j=4;
            if ($i>20) $j=1;
                DB::table('model_has_roles')
                    ->insert([
                        'role_id' => $j,
                        'model_type' => 'App/Model/User',
                        'model_id' => $i
                    ]);
            }
        DB::table('model_has_roles')
            ->insert([
                'role_id' => 4,
                'model_type' => 'App/Model/User',
                'model_id' => 1
            ]);

        //Banner
        $banners = [
            ['first_class', 'Запишите детей в первый класс', 'documents/prilozhenie-300x148.png', 'http://филипповская-школа.рф/2202-2/', ''],
            ['point', 'Точка роста', 'documents/tochka-300x180.jpg', 'http://филипповская-школа.рф/czentr-estestvenno-nauchnogo-profilya-tochka-rosta/',''],
            ['', 'Департамент образования Владимирской области', 'documents/depvo.jpg', 'https://департамент.образование33.рф/'],
            ['', 'Персональные данные ДЕТИ', 'documents/persdeti.png', 'http://персональныеданные.дети/']
        ];
        foreach ($banners as $banner) {
            Banner::factory()->state(['slug' => $banner[0], 'bannerTitle' => $banner[1], 'img' => $banner[2], 'ref' => $banner[3]])->create();
        }


//        \App\Models\Achievement::factory(5)->create();


//        Appeal::factory(5)
//            ->for(Categories_appeal::factory()->state([
//                'name' => 'Заявления',
//            ]), 'categories_appeals')
//            ->create();

//        \App\Models\Parents_connection::factory(5)->create();
    }

}

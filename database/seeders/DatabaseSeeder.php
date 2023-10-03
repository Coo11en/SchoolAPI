<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Album;
use App\Models\Album_photo;
use App\Models\Appeal;
use App\Models\Call_schedule;
use App\Models\Appeals_category;
use App\Models\Chapter;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\Cabinet;
use App\Models\Docimage;
use App\Models\Docimage_section;
use App\Models\Docsource;
use App\Models\Docsource_section;
use App\Models\Menu;
use App\Models\Menu_basic;
use App\Models\Menu_item;
use App\Models\News;
use App\Models\News_category;
use App\Models\Parents;
use App\Models\Photo;
use App\Models\Roles;
use App\Models\Schedule;
use App\Models\Section;
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

        $images = [
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/1-1.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpeg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpeg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/4.jpeg',
            'https://sun9-west.userapi.com/sun9-4/s/v1/ig2/sWUPPhhHRwtFJAUU5_3KjKtpPNb4x_pn1gIenXGAuVGyNR_CkbhzQPqnGbVmL9T3vNML8a4szYdRlvFfXqY7CJEI.jpg?size=1600x1200&quality=95&type=album',
            'https://sun9-west.userapi.com/sun9-9/s/v1/ig2/kkYmhwmcOygjb_kykldvp7ntmUJUVNNNFQL-nt4Aa5JkvPxaNpN8ngU0Md5fwUwsA6f-5h6KBrgeCFDkALKgv9dJ.jpg?size=1024x768&quality=95&type=album',
            'https://sun9-west.userapi.com/sun9-56/s/v1/ig2/-n6XiLX-pYVjT_EbDQ4P6cyz8PYqwJFnLVX1ohihVy7kYfmZ1qa4mRKkHbr4ezvLcA-kOnt3YyLwoNSLVfPdZvTc.jpg?size=1280x960&quality=95&type=album',
            'https://sun9-4.userapi.com/impg/N4oiUQCC2N9eUFybwvsWPalSoJtVFO977dahhw/smIFagoFh5s.jpg?size=1280x960&quality=95&sign=f77a20100c3739d129f5158c2c840cfa&type=album',
            'https://sun1-24.userapi.com/impg/nOCvs5ci49XvFMX8_m4uwGl5LsgTV5XRkZJQ0Q/qIkdsmAlQRg.jpg?size=960x1280&quality=95&sign=09d1a93ff96422305f274d4c2b32542e&type=album',
            'https://sun9-73.userapi.com/impg/5zpFM-KfBYLfXE0H4LsDJBMecKJAkmDGRbgljw/B9i7WNu1Joc.jpg?size=1024x768&quality=95&sign=30578b97896519849c8c72dbf0cde87c&type=album',
            'https://sun9-38.userapi.com/impg/4OwbDkxTJgtI0Lj0o3E7z5XmJwlTJBP3xt39uA/ywvEbSmUJ7s.jpg?size=960x1280&quality=95&sign=0f338829f36b6844c2dcf4678aeedc9d&type=album',
            'https://sun9-49.userapi.com/impg/Fmj09NTyRHDmG6dZ7htkvXY4eLhscEdj9S4xfA/HLzRlhTprQo.jpg?size=1024x768&quality=95&sign=36113592a4fac26f7de4197c021a6f51&type=album',
            'https://sun9-35.userapi.com/impg/ykGxErDL3ff30dhejdL1t0y1KbwvxLszq30Pkw/PX4Gu5tW3tk.jpg?size=1280x960&quality=95&sign=ed3834403671db2e48ff8e5f8afd7558&type=album',
            'https://sun9-49.userapi.com/impg/jEhSkCl55aOaZQPoKMagg1Jr023FB2LWQTmmoQ/TzxDpaJm4Rc.jpg?size=1024x768&quality=95&sign=c6e92c75e02ded4fd44c179fbcc78fab&type=album',
            'https://sun9-79.userapi.com/impg/nRLw5un8FuuSooIeaD7skw4IQPwZoODCtsemHA/EEnuTEJioOU.jpg?size=1024x768&quality=95&sign=b8786e812566ab2e5e53f925dc981854&type=album',
            'https://sun9-25.userapi.com/impg/cO9ss1KBq3mWGiXcOI_EzPccUqRMIIsLHZGBzQ/jk_VOWMKzV4.jpg?size=1024x768&quality=95&sign=c1d29ba8532d2e4e79635e1243dca9c3&type=album',
            'https://sun9-44.userapi.com/impg/otcRtt-dkoVnq4c8gw--whl2odNHCVIPAt3EuA/WF5BlNYMik8.jpg?size=960x1280&quality=95&sign=46021dcef0892f89eb8171aa1cdcb5df&type=album',
            'https://sun9-60.userapi.com/impg/ppVO2nKsd-vgZY111Ls2PxtFmiLFiaxE1lx-xw/mmM9jnaS2Mk.jpg?size=960x1280&quality=95&sign=67a2558b998536b71cf580bdc70a6658&type=album',
        ];

// Seed 20 Photo
        foreach ($images as $img) {
            Photo::factory()->state(['img' => $img])->create();
        }

// Seed 2 Album
        Album::factory(3)->create();

// Seed album_photo
        for ($i = 1; $i < 21; $i++){
            Album_photo::factory()->state([
                'photo_id' => Photo::find($i)->id,
                'main_img' => ($i > 3) ? 0 : 1,
                'album_id' => ($i > 3) ? Album::all()->random()->id : $i,
            ])->create();
        }

        DB::table('roles')->insert($this->getRolesData());

// Seed 2 Teachers
        Teacher::factory(8)
            ->state(['role_id' => Roles::where('role_name', '=', 'Учитель')->first()->id])
            ->create();

// Seed 2 classrooms
        Classroom::factory()->state(['name' => '1a', 'teacher_id' => Teacher::all()[0]->id])->create();
        Classroom::factory()->state(['name' => '2a', 'teacher_id' => Teacher::all()[1]->id])->create();

// Seed 6 days
        $days = [
            'Понедельник',
            'Вторник',
            'Среда',
            'Четверг',
            'Пятница',
            'Суббота'
        ];
        foreach ($days as $day) {
            Day::factory()->state(['name' => $day])->create();
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
        };

// Seed 4 lessons every day for 2 classrooms
        for ($i=0; $i<2;$i++) {
            for ($k=1; $k<7; $k++) {
                for ($j = 1; $j < 5; $j++) {
                    Schedule::factory()->state([
                        'subject_id' => Subject::all()->random()->id,
                        'teacher_id' => Teacher::all()[$i]->id,
                        'week_day_name' => Day::find($k)->name,
                        'classroom_id' => Classroom::all()[$i]->id,
                        'call_schedule_id' => Call_schedule::where('call_number', '=', $j)->first()->id,
                        'day_id' => $k
                    ])->create();
                }
            }
        }


// Seed 5 news and 1 category
        News::factory()
            ->count(5)
            ->for(News_category::factory()->state([
                'name' => 'School news',
            ]), 'newsCategories')
            ->create();

        Student::factory(5)
            ->has(Parents::factory()->count(2))
            ->create();

//

        $cabinets = [
            'Кабинет информатики',
            'Кабинет химии',
            'Кабинет физики',
        ];

        foreach ($cabinets as $cabinet)
            Cabinet::factory()->state([
                'name' => $cabinet,
            ])->create();

        // Создаем 60 новых полей для меню
        for ($i = 1; $i < 31; $i++) {
            Menu_basic::factory()->state([
                'date' => date_date_set(now(), 2023, 9, $i),
                'name_menu' => 'Завтрак'
            ])->create();
            Menu_basic::factory()->state([
                'date' => date_date_set(now(), (int)date('Y'), (int)date('m'), $i),
                'name_menu' => 'Обед'
            ])->create();
        }
        // Создаем 50 блюд
        Menu_item::factory(50)->create();
        // Создаем 60 меню
        for ($i = 1; $i < 61; $i++){
            for ($j = 1; $j < 5; $j++) {
                Menu::factory()->state([
                    'menu_basic_id' => Menu_basic::find($i)->id,
                    'menu_item_id' => Menu_item::all()->random()->id,
                ])->create();
            }
        }

        $appeals_categories = [
            'Вопросы о питании',
            'Вопросы директору',
        ];

        foreach ($appeals_categories as $appeals_category)
            Appeals_category::factory()->state([
                'name' => $appeals_category,
            ])->create();

        for ($i = 1; $i < 11; $i++) {
            Appeal::factory()->state([
                'category_id' => Appeals_category::all()->random()->id,
            ])->create();
        }

        //Заполнение секций основного раздела
        Docimage::factory(20)->create();
        Docsource::factory(20)->create();

        $chapters = [
            ["Основные сведения", "basic"],
            ["Структура и органы управления образовательной организацией", "struct"],
            ["Документы","document"],
            ["Образование", "education"],
            ["Образовательные стандарты","eduStandarts"],
            ["Материально-техническое обеспечение и оснащенность образовательного процесса", "objects"],
            ["Финансово-хозяйственная деятельность","budget"],
            ["Вакантные места для приема (перевода) по каждой образовательной программе","vacant"],
            ["Доступная среда","dsreda"]
        ];
        foreach ($chapters as $chapter) {
            Chapter::factory()->state(['chapterTitle' => $chapter[0], 'slug' => $chapter[1]])->create();
        }

        Section::factory(20)->create();

        Docimage_section::factory(20)->create();
        Docsource_section::factory(20)->create();


//        \App\Models\Achievement::factory(5)->create();


//        Appeal::factory(5)
//            ->for(Categories_appeal::factory()->state([
//                'name' => 'Заявления',
//            ]), 'categories_appeals')
//            ->create();

//        \App\Models\Parents_connection::factory(5)->create();
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

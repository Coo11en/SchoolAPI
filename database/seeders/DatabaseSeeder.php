<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Album;
use App\Models\Album_photo;
use App\Models\Banner;
use App\Models\Appeal;
use App\Models\AppealCategory;
use App\Models\CallSchedule;
use App\Models\Chapter;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\Cabinet;
use App\Models\Docimage;
use App\Models\Docimage_section;
use App\Models\Docsource;
use App\Models\Docsource_section;
use App\Models\Menu;
use App\Models\MenuBasic;
use App\Models\MenuItem;
use App\Models\News;
use App\Models\News_category;
use App\Models\Parents;
use App\Models\Photo;
use App\Models\Schedule;
use App\Models\Section;
use App\Models\Student;
use App\Models\Subject;
use App\Models\Teacher;
use App\Models\User;
use Backpack\PermissionManager\app\Models\Role;
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

// Seed 3 roles
        $roles = [
            ['guard_name' => 'backpack', 'name' => 'Учитель', 'created_at' => now(), 'updated_at' => now()],
            ['guard_name' => 'backpack', 'name' => 'Студент', 'created_at' => now(), 'updated_at' => now()],
            ['guard_name' => 'backpack', 'name' => 'Родитель', 'created_at' => now(), 'updated_at' => now()]
        ];
//        foreach ($roles as $role) {
//            Roles::factory()->state($role)->create();
//        }


// Seed 3 cabinets
        $cabinets = [
            ['Кабинет информатики', '101'],
            ['Кабинет химии', '202a'],
            ['Кабинет физики', '303']
        ];

        foreach ($cabinets as $cabinet)
            Cabinet::factory()->state([
                'name' => $cabinet[0],
                'number' => $cabinet[1]
            ])->create();

        Role::create(['name' => 'Teacher']);
        Role::create(['name' => 'Student']);
        Role::create(['name' => 'Parent']);
// Seed 2 Teachers
        Teacher::factory(8)
            //->state(['role_id' => Role::where('name', '=', 'Учитель')->first()->id])
            ->create();

// Seed 2 classrooms
        Classroom::factory()->state([
            'name' => '1a', 'teacher_id' => Teacher::all()[0]->id,
            'cabinet_id' => Cabinet::all()[0]->id
        ])->create();
        Classroom::factory()->state([
            'name' => '2a',
            'teacher_id' => Teacher::all()[0]->id,
            'cabinet_id' => Cabinet::all()[1]->id
        ])->create();

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
            CallSchedule::factory()->state([
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
                        'call_schedule_id' => CallSchedule::where('call_number', '=', $j)->first()->id,
                        'day_id' => $k
                    ])->create();
                }
            }
        }


// Seed 17 news and 1 category
        News::factory()
            ->count(17)
            ->for(News_category::factory()->state([
                'name' => 'School news',
            ]), 'news_category')
            ->create();

//Seed 3 students with 2 parents
        Student::factory(3)
            ->has(Parents::factory()->count(2))
            ->create();
//Seed for user with id=1 two children
        Parents::factory()->state([
            'user_id' => 1,
            'name' => 'Фамилия',
            'surname' => 'Имя'
        ])->has(Student::factory(2))->create();


// Создаем 60 новых полей для меню
        for ($i = 1; $i < 31; $i++) {
            MenuBasic::factory()->state([
                'date' => date_date_set(now(), 2023, 9, $i),
                'name_menu' => 'Завтрак'
            ])->create();
            MenuBasic::factory()->state([
                'date' => date_date_set(now(), (int)date('Y'), (int)date('m'), $i),
                'name_menu' => 'Обед'
            ])->create();
        }
        // Создаем 50 блюд
        MenuItem::factory(50)->create();
        // Создаем 60 меню
        for ($i = 1; $i < 61; $i++){
            for ($j = 1; $j < 5; $j++) {
                Menu::factory()->state([
                    'menu_basic_id' => MenuBasic::find($i)->id,
                    'menu_item_id' => MenuItem::all()->random()->id,
                ])->create();
            }
        }

        $appeals_categories = [
            'Вопросы о питании',
            'Вопросы директору',
        ];

        foreach ($appeals_categories as $appeals_category)
            AppealCategory::factory()->state([
                'name' => $appeals_category,
            ])->create();

        for ($i = 1; $i < 11; $i++) {
            Appeal::factory()->state([
                'category_id' => AppealCategory::all()->random()->id,
            ])->create();
        }

        //Заполнение секций основного раздела
        $chapters = [
            ["Основные сведения", "common"],
            ["Структура и органы управления образовательной организацией", "struct"],
            ["Документы","document"],
            ["Образование", "education"],
            ["Образовательные стандарты и требования","eduStandarts"],
            ["Материально-техническое обеспечение и оснащенность образовательного процесса", "objects"],
            ["Финансово-хозяйственная деятельность","budget"],
            ["Вакантные места для приема (перевода) обучающихся","vacant"],
            ["Доступная среда","dsreda"],
            ["Организация питания в образовательной организации","ezhednevnoe-menyu"],
            ["Электронная запись в первый класс","first_class"],
            ["Точка роста","point"]
        ];
        foreach ($chapters as $chapter) {
            Chapter::factory()->state(['chapterTitle' => $chapter[0], 'slug' => $chapter[1]])->create();
        }

//Section
        $sections = [
            //1
            [1, 'Информация об организации', '<p><strong>&nbsp;Наименование ОО</strong>:&nbsp;Муниципальное казенное общеобразовательное учреждение «Филипповская средняя общеобразовательная школа» Киржачского района Владимирской области<br><strong>Сокращенно:</strong>МКОУ Филипповская СОШ</p><p><strong>Дата создания образовательной организации:</strong>Декабрь 1975 года</p><p><strong>Место нахождения образовательной организации:</strong>РФ, Владимирская область, Киржачский район, село Филипповское, ул.Советская, дом26</p><p><strong>Режим и график работы:</strong><br>Понедельник-Пятница 8:00-17:00<br>Суббота 8:00-14:00</p><p><strong>Телефон Директора школы:</strong>8 (49237) 7-11-73</p><p><strong>Телефон Заместителя директорапо АХЧ:</strong>8(49237)7-12-74</p><p><strong>Адрес электронной почты:</strong>Filippovskay-sl@yandex.ru</p><p><strong>Адрес официального сайта:</strong>http://филипповская-школа.рф/</p><p><strong>Официальная страница ВКонтакте:</strong>https://vk.com/filippovskayasosh</p><p><strong>Формы обучения:</strong>При реализации образовательных программ используются различные образовательные технологии, в том числе дистанционные образовательные технологии, электронное обучение.</p>'],
            [1, 'Информация об учредителе','<p><strong>Учредитель:</strong>Администрация Киржачского района Владимирской области</p><p><strong>Начальник управления:</strong>Кузицына Ольга Владимировна</p><p><strong>Место нахождения:</strong>601010, Владимирская область, г.Киржач, ул.Серегина, д.7</p><p><strong>График работы:</strong><br>Понедельник—пятницас8.00до17.00</p><p><strong>Телефон:</strong>8(49237)2-04-00</p><p><strong>Факс:</strong>8(49237)2-03-84</p><p><strong>Адрес электронной почты:</strong>info@kirzhach.su</p><p><strong>Сайт:</strong>http://www.kirzhach.su</p><p><strong>Места осуществления образовательной деятельности:&nbsp;</strong></p><p>601024, Российская Федерация, Центральный федеральный округ,Владимирская обл., Киржачский район., Филипповское с., Советскаяул., д.26.</p><p><strong>Места осуществления образовательной деятельности по дополнительным профессиональным программам:&nbsp;</strong></p><p>нет</p><p><strong>Места осуществленияо бразовательной деятельности по основным программам профессионального обучения:</strong></p><p>нет</p><p><strong>Места осуществления образовательной деятельности при использовании сетевой формы реализации образовательных программ:</strong>нет</p><p><strong>Места проведения практики:</strong></p><p>нет</p><p><strong>Места проведения практической подготовки обучающихся:</strong></p><p>нет</p><p><strong>Места проведения государственной итоговой аттестации:</strong>ОГЭ: МБОУ СОШ №2 (Киржач., Гагарина ул., д.25), МБОУ СОШ №3 (г.Киржач, ул.Чехова, д.10а)&nbsp;ЕГЭ: МБОУ СОШ №5(г.Киржач, ул.40 лет Октября, д.17),МБОУ СОШ №6 им. С.Б.Белкина (г.Киржач, ул.Пушкина, д.27)</p>'],
            [2, 'Структура и органы управления образовательной организацией',''],
            [3, 'Документы', ''],
            [3, 'Предписания органов, осуществляющих государственный контроль (надзор) в сфере образования, отчеты об исполнении таких предписаний',''],
            //6
            [4, 'Образование ведется на Русском языке',''],
            [4, 'Всероссийские проверочные работы',''],
            [4, 'Государственная итоговая аттестация',''],
            [4, 'Дистанционное обучение',''],
            [4, 'График дистанционных занятий','<table><thead><tr><td><strong>1 урок</strong></td><td>9:00 — 9:30</td></tr></thead><tbody><tr><td><strong>2 урок</strong></td><td>9:40 — 10:10</td></tr><tr><td><strong>3 урок</strong></td><td>10:20 — 10:50</td></tr><tr><td><strong>4 урок</strong></td><td>11:00 — 11:30</td></tr><tr><td><strong>5 урок</strong></td><td>11:45 — 12:15</td></tr><tr><td><strong>6 урок</strong></td><td>12:25 — 12:55</td></tr><tr><td><strong>7 урок</strong></td><td>13:00 — 13:30</td></tr></tbody></table>'],
            [4, 'Реализуемые уровни образования', '<p>МКОУ Филипповская СОШ осуществляет образовательный процесс в соответствии с общеобразовательными программами трех уровней общего образования:</p><ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul><p><strong>Численность обучающихся по реализуемым образовательным программам:</strong></p><ul><li>Начальное общее образование -106 обучающихся;</li><li>Основное общее образование — 106 обучающихся;</li><li>Среднее общее образование — 20 обучающихся.</li></ul>'],
            [4, 'Языки, на которых осуществляется образование','<p>Обучение и воспитание в МКОУ «Филипповская средняя общеобразовательная школа» ведётся на русском языке.</p>'],
            [4, 'Нормативные сроки обучения','<ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul>'],
            [4, 'Срок действия государственной аккредитации образовательной программы',''],
            [4, 'Образовательные программы','<p>Содержание общего образования определяется образовательными программами, разрабатываемыми и реализуемыми МКОУ Филипповской СОШ самостоятельно на основе федеральных государственных образовательных стандартов и примерных образовательных учебных программ, курсов, дисциплин.</p><p>Освоение образовательных программ основного общего и среднего общего образования завершается обязательной итоговой аттестацией обучающихся. Государственная итоговая аттестация выпускников МКОУ Филипповской СОШ осуществляется в соответствии с положением о Государственной итоговой аттестации выпускников общеобразовательных учреждений, утверждаемым Министерством образования и науки Российской Федерации.</p><p><strong>Виды реализуемых программ:</strong></p><p>а) Основные общеобразовательные программы начального общего образования;</p><p>б) Основные общеобразовательные программы основного общего образования;</p><p>в) Основные общеобразовательные программы среднего общего образования;</p><p>г) Адаптированная образовательная программа НОО и ООО.</p>'],
            [4, 'Учебный план на 2022-2023 учебный год',''],
            [4, 'Рабочие программы', ''],
            [4, 'Адаптированные образовательные программы учебных курсов, предметов',''],
            [4, 'Аннотации к рабочим программам',''],
            //20
            [11, 'Электронная запись в первый класс','<strong>УВАЖАЕМЫЕ РОДИТЕЛИ!</strong><p>Вы можете подать заявление о зачислении в школу в электронном виде. Всего лишь одно нажатие и вы попадаете на <a href="https://www.gosuslugi.ru/600426/1/form">«Единый портал государственных и муниципальных услуг (функций)»</a><br><a href="https://www.gosuslugi.ru/600426/1/form"><img class="wp-image-2201 alignleft" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png" alt="" width="556" height="275" srcset="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png 1153w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-300x148.png 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-1024x506.png 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-768x380.png 768w" sizes="(max-width: 556px) 100vw, 556px"></a></p>'],
            [12, 'Центр естественно-научного профиля «Точка роста»','<div class="post post-one"><div class="post_title_page"><h2>Центр естественно-научного профиля «Точка роста»</h2></div><p>&nbsp;</p><p><img class="wp-image-1180 alignright" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg" alt="" width="635" height="347" srcset="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg 918w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-300x164.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-768x419.jpg 768w" sizes="(max-width: 635px) 100vw, 635px"></p><p><a href="http://филипповская-школа.рф/?page_id=1240&amp;preview=true"><img class="wp-image-1237 aligncenter" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/111.jpg" alt="" width="181" height="66"></a></p><p><a href="http://филипповская-школа.рф/?page_id=1244&amp;preview=true"><img class="wp-image-1238 aligncenter" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/222.jpg" alt="" width="252" height="63"></a></p><p><a href="http://филипповская-школа.рф/?page_id=1246&amp;preview=true"><img class=" wp-image-1239 aligncenter" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/333.jpg" alt="" width="178" height="57"></a></p><p><a href="http://филипповская-школа.рф/?page_id=1256&amp;preview=true"><img class="aligncenter wp-image-1255" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/gwzlan9feiw.jpg" alt="" width="248" height="76"></a></p><p><a href="http://филипповская-школа.рф/?page_id=1264&amp;preview=true"><img class="aligncenter size-full wp-image-1262" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/123.jpg" alt="" width="163" height="85"></a></p><p><img class="wp-image-1646 alignright" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg" alt="" width="258" height="197" srcset="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-300x229.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1024x781.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-768x586.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1536x1171.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-2048x1562.jpg 2048w" sizes="(max-width: 258px) 100vw, 258px">С днем рождения, Точка роста!!</p><p>9 сентября 2021 года в нашей школе состоялось торжественное открытие Центра естественно-научной и технологической направленностей.<br>Поздравить школу со столь знаменательным событием собралось много гостей. Глава Киржачского района, секретарь Местного Отделения Партии «Единая Россия» А.Н. Доброхотов, глава администрации Киржачского района И.Н. Букалов, заместите<img class="wp-image-1647 alignleft" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg" alt="" width="285" height="190" srcset="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-300x200.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1024x683.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-768x512.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1536x1024.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-2048x1365.jpg 2048w" sizes="(max-width: 285px) 100vw, 285px">ль главы администрации района по социальным вопросам Е.А. Жарова, глава администрации МО Филипповское Л.А. Рубцов вместе с преподавателями и учениками нашей школы заложили Аллею Мудрости, а затем поднялись в новое образовательное пространство. Современные кабинеты химии, физики и биологии, на базе которых с помощью цифровых лабораторий, интерактивного оборудования, тематических коллекций по предметам, комплектам по робототехнике, механике и мехатронике наши ученики смогут получать образование, соответствующее современным требованиям.<br>Наши малыши рассказали стихи о науке, а старшеклассники продемонстрировали возможности нового оборудования и даже пригласили принять участие в опытах И.П. Букалова.<img class="wp-image-1648 alignright" src="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg" alt="" width="251" height="170" srcset="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-300x204.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1024x696.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-768x522.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1536x1044.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-2048x1392.jpg 2048w" sizes="(max-width: 251px) 100vw, 251px">Педагоги «Точки роста» Разбоева В.И., Прохорова Э.В., Беляков В.М. рассказали об особенностях преподавания своих дисциплин и перспективах использования возможностей Центра.<br>Ещё раз поздравляем нашу школу с открытием «Точки роста» и надеемся, что благодаря Центру наши дети достигну высоких результатов!</p><p style="font-weight: 400; text-align: left; padding-left: 40px;">Центр образования естественно-научной и технологической направленностей «Точка роста» на базе на базе МКОУ «Филипповская СОШ» создан в 2021 в рамках федерального проекта «Современная школа» национального проекта «Образование». Он призван обеспечить повышение охвата обучающихся программами основного общего и дополнительного образования естественно-научной и технологической направленностей с использованием современного оборудования.</p><p style="font-weight: 400; padding-left: 40px;">&nbsp; &nbsp; Центры «Точка роста» на базе общеобразовательных организаций сельской местности и малых городов создаются для формирования условий для повышения качества общего образования, в том числе за счет обновления учебных помещений, приобретения современного оборудования, повышения квалификации педагогических работников и расширения практического содержания реализуемых образовательных программ.</p><p style="font-weight: 400; padding-left: 40px;">Центр «Точка роста» является частью образовательной среды общеобразовательной организации, на базе которой осуществляется:</p><p style="font-weight: 400; padding-left: 40px;">—&nbsp;&nbsp;преподавание учебных предметов из предметных областей «Естественно-научные предметы», «Естественные науки», «Обществознание и естествознание», «Математика и информатика», «Технология»;<br>—&nbsp;&nbsp;внеурочная деятельность для поддержки изучения предметов естественно-научной и технологической направленностей;<br>—&nbsp;дополнительное образование детей по программам естественно-научной и технической направленностей;<br>—&nbsp;&nbsp;проведение внеклассных мероприятий для обучающихся;<br>—&nbsp;организация образовательных мероприятий, в том числе в дистанционном формате с участием обучающихся из других образовательных организаций.</p><p style="padding-left: 40px;">Общая информация о национальном проекте «Образование» (в том числе знак национального проекта «Образование»), адрес официального сайта Министерства просвещения Российской Федерации в информационно-телекоммуникационной сети «Интернет» и официальная символика Министерства просвещения Российской Федерации приведены <a href="http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/ffc7c5002b89968a067870f958e8e7c0.pdf">в презентации.</a></p><h4 style="padding-left: 40px;">Информация о национальном проекте «Образование» размещена на сайте Министерства просвещения Российской Федерации по ссылке:<br><span class="link-wrapper-container"><a href="https://edu.gov.ru/national-project/">https://edu.gov.ru/national-project/</a></span></h4><h4 style="padding-left: 40px;">Официальный адрес Министерства просвещения Российской Федерации:<br><a href="https://edu.gov.ru/">https://edu.gov.ru/</a></h4><p>&nbsp;</p><div class="linebottom"></div></div>'],
            //22
        ];
        foreach ($sections as $section) {
            Section::factory()->state(['chapter_id' => $section[0], 'sectionTitle' => $section[1], 'sectionText' => $section[2],'sequence' => '500', 'status' => 'active'])->create();
        }

        $docsources = [
            //1
            ['Структура и органы управления образовательной организацией', 'documents/structure_and_management.pdf', 'PDF'],
            ['Положение о Совете школы','data/documents/polozheniye_sovete_schkoly.pdf','PDF'],
            ['Положение о Совете родителей','data/documents/polozheniye_sovete_roditeley-1.pdf','PDF'],
            ['Положение о педагогическом совете','data/documents/polozheniye_pedagogicheskom_sovete-1.pdf','PDF'],
            ['Положение о методическом объединении','data/documents/polozheniye_metodicheskom_obyedinenii_uchiteley_predmetnikov.pdf','PDF'],
            ['Положение о классном родительском собрании и родительском комитете класса','data/documents/polozheniye_klassnom_roditelskom_sobranii_roditelskom_komitete_klassa.pdf','PDF'],
            ['Положение о совете профилактики и правонарушени','data/documents/polozheniye_sovete_profilaktiki_pravonarusheniy_nesovershennoletnikh.pdf','PDF'],
            //8
            ['Устав', 'http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/ustav.pdf','PDF'],
            ['Постановление о мерах по противодействию распространение коронавирусной инфекции','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/postanovleniye_o_merakh_po_koronavirusnoy_infektsii.pdf','PDF'],
            ['Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/04/edinyj-grafik-oczenochnyh-proczedur-v-shkole-na-2022-2023chebnyj-god.pdf','PDF'],
            ['Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год в 10-11 классах','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/04/edinyj-grafik-oczenochnyh-proczedur-v-shkole-na-2022-2023-uchebnyj-god-v-10-11-klassah.pdf','PDF'],
            ['Положение о внутришкольном контроле','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-vnutrishkolnom-kontrole.pdf','PDF'],
            ['Положение  о  Педагогическом  совете','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-pedagogicheskom-sovete.pdf','PDF'],
            ['Положение о системе внутреннего мониторинга оценки качества образования','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-monitoringe-kachestva-obrazovaniya-v-shkole.pdf','PDF'],
            ['Положение о поощрении обучающихся за успехи в учебной, физкультурной, спортивной, общественной,научной, научно-технической, творческой, экспериментальной и инновационной деятельности','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-pooshhrenii-obuchayushhihsya-za-uspehi.pdf','PDF'],
            ['Положение о правилах поведения обучающихся в школе','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-pravilah-povedeniya-obuchayushhihsya.pdf','PDF'],
            ['Положение о правилах приема, перевода, выбытия и отчисления обучающихся','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-pravilah-priema-perevoda-vybytiya-i-otchisleniya-obuchayushhihsya.pdf','PDF'],
            ['Положение об основных образовательных программах общего образования, реализуемых в организации, осуществляющей образовательную деятельность','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-ob-oop-v-shkole.pdf','PDF'],
            ['Положение о классах профильного обучения','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/polozhenie-o-profilnyh-klassah.pdf','PDF'],
            ['Постановление администрации Киржачского района о переименовании МКОУ Филипповской СОШ','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/postanovleniye_administratsii_o_pereimenovanii.pdf','PDF'],
            ['Положение о формах, периодичности и порядке текущего контроля успеваемости, промежуточной и итоговой аттестации обучающихся','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2022/08/polozhenie-o-formah-i-poryadke-tekushhego-kontrolya-uspevaemosti-i-attestaczii.pdf','PDF'],
            ['Положение о проведение промежуточной аттестации учащихся и осуществлении текущего контроля их успеваемости в МКОУ Филипповская СОШ','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/06/ot-31.08.2017-r.pdf','PDF'],
            ['Положение о порядке отчисления, исключения обучающихся из МКОУ Филипповская СОШ','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/06/ot-31.08.2018-r.pdf','PDF'],
            ['Приказ о переименовании школы','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/rename_school.pdf','PDF'],
            ['Самообследовании МКОУ Филипповской СОШ за 2022 год','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/04/samoobsledovanie-22.pdf','PDF'],
            ['Анализ по воспитательной работе МКОУ Филипповской СОШ за 2020 — 2021 учебный год','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/analiz-vospitatelnoj-raboty-za-2020-2021g.pdf','PDF'],
            ['Приказ об исполнении приказа управления администрации Киржачского района №31','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/prikaz_n14.pdf','PDF'],
            ['Программа развития','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/programma-razvitiya-1.pdf','PDF'],
            ['Правил внутреннего трудового распорядка','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/pravila_vnutrennego_trudovogo_rasporyadka_2020.pdf','PDF'],
            ['Приказ об административном регламенте предоставления муниципальной услуги Зачисление в образовательные организации','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/02/administrative_order.pdf','PDF'],
            ['Приказ об исполнении приказа управления администрации Киржачского района от 17.02.2021','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/06/prikaz-territoriya.pdf','PDF'],
            ['Приказ о создании наркологического поста в МКОУ Филипповская СОШ','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/06/prikaz-narkopost.pdf','PDF'],
            ['Информация о закрепленной за школой территории','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2022/06/informacziya-o-zakreplennoj-za-shkoloj-territorii.pdf','PDF'],
            ['Правила приема на обучение в МКОУ Филипповской СОШ','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2022/06/pravila-priema-na-obuchenie-v-mkou-filippovskoj-sosh.pdf','PDF'],
            ['Коллективный договор на 2021-2023 г.г.','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/kollektivnyj-dogovor-1-1.pdf','PDF'],
            ['Приказ о создании наркологического поста в МКОУ Филипповской СОШ от 01.09.2021 г.','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/prikaz-narkopost.pdf','PDF'],
            ['Положение о языке обучения','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2022/08/polozhenie-o-yazyke-obucheniya.pdf','PDF'],
            ['Положение о рабочей программе','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2022/08/polozhenie-o-rabochej-programme.pdf','PDF'],
            ['План производственной учебы учителей «Учись учить»','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/pomoshh-uchitelyam.pdf','PDF'],
            ['Постановление администрации Киржачского района Владимирской области от 16.03.2023 №264 О закреплении за муниципальными общеобразовательными организациями Киржачского района территорий муниципального образования Киржачский район','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/p.-ot-16.03.2023-№264-o-zakreplenii-territorij-2023-shkoly.pdf','PDF'],
            ['Приказ по школе о закрепленных территориях МКОУ Филипповской СОШ','http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/04/zakreplennye-terriorii.pdf','PDF'],
            //42
            ['Предписание от 17.05.2017г. № 2-2-2017','http://филипповская-школа.рф/wp-content/uploads/2021/02/predpisaniye_no_2-2-2017.pdf','PDF'],
            ['Ответ на предписание от 17.05.2017г. № 2-2-2017','http://филипповская-школа.рф/wp-content/uploads/2021/02/otvet_na_predpisaniye_no_2-2-2017.pdf','PDF'],

            //44  -- Образование
            ['О реализуемых уровнях образования (см. приложении к лицензии — перечень общеобразовательных программ)','http://филипповская-школа.рф/wp-content/uploads/2020/09/akr2.jpg','JPG'],
            ['О формах обучения (см. пункт 3.5 устава школы)','http://филипповская-школа.рф/wp-content/uploads/2021/02/ustav.pdf','PDF'],
            ['О лицензии на осуществление образовательной деятельности (см. лицензия)','http://филипповская-школа.рф/wp-content/uploads/2020/09/lic2_mini.png','JPG'],
            ['Приложение №1 к лицензии на осуществление образовательной деятельности (см. приложение №1)','http://филипповская-школа.рф/wp-content/uploads/2021/06/prilozhenie-k-liczenzii.png','PDF'],
            ['О сроке действия государственной аккредитации образовательной программы (см. свидетельство о гос.  аккредитации)','http://филипповская-школа.рф/wp-content/uploads/2020/09/akr_mini.jpg','PDF'],
            //49
            ['Аналитическая справка о результатах Всероссийских проверочных работ в 5, 6, 7, 8, 9 классах','http://филипповская-школа.рф/wp-content/uploads/2021/01/analiz-vpr.pdf','PDF'],
            ['План  мероприятий («дорожная карта») результатов ВПР, сентябрь-октябрь 2020 года','http://филипповская-школа.рф/wp-content/uploads/2021/03/dorozhnaya-kartaft-word.pdf','PDF'],
            ['Отчет о проводимых мероприятиях по итогам ВПР 2020 года','http://филипповская-школа.рф/wp-content/uploads/2021/03/otchet-vpr-kolesnikovoj.pdf','PDF'],
            ['Приказ о проведении  Всероссийской проверочной работы осенью 2022 года','http://филипповская-школа.рф/wp-content/uploads/2023/03/prikaz-vpr-osen-2022.pdf','PDF'],
            ['График выхода общественных наблюдателей на наблюдение за проведением ВПР в 2023 году ','http://филипповская-школа.рф/wp-content/uploads/2023/03/obshh.nablyudateli-vpr.pdf','PDF'],
            //54
            ['«Дорожная карта» организации и проведения государственной итоговой аттестации по образовательным программам основного общего и среднего общего образования в МКОУ Филипповской СОШ в 2023 году ','http://филипповская-школа.рф/wp-content/uploads/2023/03/dorozhnaya-karta-2023.pdf','PDF'],

        ];
        foreach ($docsources as $docsource) {
            Docsource::factory()->state(['documentName' => $docsource[0], 'documentSource' => $docsource[1], 'documentType' => $docsource[2]])->create();
        }

        $docsource_sections = [
            [1,3],[2,3],[3,3],[4,3],[5,3],[6,3],[7,3],
            [42,5],[43,5],
            [44,6],[45,6],[46,6],[47,6],[48,6],
            [49,7],[50,7],[51,7],[52,7],[53,7],
            [54,8]
        ];
        for ($i = 8; $i < 42; $i++) { array_push($docsource_sections, [$i,4]); }
        foreach ($docsource_sections as $ds) {
            Docsource_section::factory()->state(['docsource_id' => $ds[0], 'section_id' => $ds[1]])->create();
        }


        //Docimage
        $docimages = [
            ['Приложение №1', 'data/documents/akr2_mini.jpg', 'JPG'],
            ['Свидетельство', 'data/documents/akr_mini.jpg', 'JPG'],
        ];
        foreach ($docimages as $ds) {
            Docimage::factory()->state(['documentName' => $ds[0], 'documentSource' => $ds[1], 'documentType' => $ds[2]])->create();
        }

        //Docimage_section
        $docimage_sections = [ [1,4], [2,4] ];
        foreach ($docimage_sections as $ds) {
            Docimage_section::factory()->state(['docimage_id' => $ds[0], 'section_id' => $ds[1]])->create();
        }

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

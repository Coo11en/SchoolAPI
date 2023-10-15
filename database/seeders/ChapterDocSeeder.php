<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Chapter;
use App\Models\Docimage;
use App\Models\Docimage_section;
use App\Models\Docsource;
use App\Models\Docsource_section;
use App\Models\Section;
use Illuminate\Database\Seeder;

class ChapterDocSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //Заполнение секций основного раздела
        Docimage::factory(20)->create();
        Docsource::factory(20)->create();

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
            ["Организация питания в образовательной организации","ezhednevnoe-menyu"]
        ];
        foreach ($chapters as $chapter) {
            Chapter::factory()->state(['chapterTitle' => $chapter[0], 'slug' => $chapter[1]])->create();
        }

        Section::factory(20)->create();

        Docimage_section::factory(20)->create();
        Docsource_section::factory(20)->create();
    }
}

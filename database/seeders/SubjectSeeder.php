<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Subject;
use Illuminate\Database\Seeder;

class SubjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
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
    }
}

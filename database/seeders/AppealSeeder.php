<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Appeal;
use App\Models\AppealCategory;
use Illuminate\Database\Seeder;

class AppealSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
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
    }
}

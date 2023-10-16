<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\News;
use App\Models\News_category;
use Illuminate\Database\Seeder;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Seed 17 news and 1 category
        News::factory()
            ->count(17)
            ->for(News_category::factory()->state([
                'name' => 'School news',
            ]), 'news_category')
            ->create();
    }
}

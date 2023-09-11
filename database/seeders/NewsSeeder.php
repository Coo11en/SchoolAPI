<?php

declare(strict_types=1);

namespace Database\Seeders;

//use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('news')->insert($this->getData());
    }

    public function getData(): array
    {
        $response = [];
        for ($i=0; $i<14; $i++) {
            $response[] = [
                'title' => 'News#'. $i,
                'author' => fake()->userName(),
                'image' => fake()->imageUrl(),
                'description' => fake()->text(100),
               'created_at' => now(),
                'updated_at' => now(),
            ];
        }
        return $response;
    }
}

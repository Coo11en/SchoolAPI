<?php

declare(strict_types=1);

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Classroom;
use App\Models\Day;
use App\Models\Schedule;
//use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Database\Seeder;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        Classroom::factory()->create();
        // Create 5 records of lessons

        Schedule::factory()->count(5)->create();
//            ->each(function ($schedule) {
//            $schedule->days()->associate(Day::factory()->create(['name' => 'Понедельник']));
//        });

    }
}

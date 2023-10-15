<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Parents;
use App\Models\Student;
use Illuminate\Database\Seeder;

class StudentParentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
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
    }
}

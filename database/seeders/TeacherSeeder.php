<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Teacher;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TeacherSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Seed 2 Teachers
        $role = DB::table('roles')->where('name', '=', 'Учитель')->first()->id;
        Teacher::factory(8)
            ->state(['role_id' => $role])
            ->create();
    }
}

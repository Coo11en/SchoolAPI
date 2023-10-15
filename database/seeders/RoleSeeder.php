<?php

declare(strict_types=1);

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Seed 3 roles
//        $roles = [
//            ['guard_name' => 'backpack', 'name' => 'Учитель', 'created_at' => now(), 'updated_at' => now()],
//            ['guard_name' => 'backpack', 'name' => 'Студент', 'created_at' => now(), 'updated_at' => now()],
//            ['guard_name' => 'backpack', 'name' => 'Родитель', 'created_at' => now(), 'updated_at' => now()]
//        ];
//        foreach ($roles as $role) {
//            Role::insert()->state($role)->create();
//        }
        DB::table('roles')->insert($this->getRolesData());
    }

    public function getRolesData(): array
    {
        return [
            ['guard_name' => 'backpack', 'name' => 'Учитель', 'created_at' => now(), 'updated_at' => now()],
            ['guard_name' => 'backpack','name' => 'Студент', 'created_at' => now(), 'updated_at' => now()],
            ['guard_name' => 'backpack','name' => 'Родитель', 'created_at' => now(), 'updated_at' => now()]
        ];
    }
}

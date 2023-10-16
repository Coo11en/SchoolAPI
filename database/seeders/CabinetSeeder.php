<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Cabinet;
use Illuminate\Database\Seeder;

class CabinetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
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
    }
}

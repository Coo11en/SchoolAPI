<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Menu;
use App\Models\MenuBasic;
use App\Models\MenuItem;
use Illuminate\Database\Seeder;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Создаем 60 новых полей для меню
        for ($i = 1; $i < 31; $i++) {
            MenuBasic::factory()->state([
                'date' => date_date_set(now(), 2023, 9, $i),
                'name_menu' => 'Завтрак'
            ])->create();
            MenuBasic::factory()->state([
                'date' => date_date_set(now(), (int)date('Y'), (int)date('m'), $i),
                'name_menu' => 'Обед'
            ])->create();
        }
        // Создаем 50 блюд
        MenuItem::factory(50)->create();
        // Создаем 60 меню
        for ($i = 1; $i < 61; $i++){
            for ($j = 1; $j < 5; $j++) {
                Menu::factory()->state([
                    'menu_basic_id' => MenuBasic::find($i)->id,
                    'menu_item_id' => MenuItem::all()->random()->id,
                ])->create();
            }
        }
    }
}

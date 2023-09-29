<?php

namespace Database\Seeders;

use App\Models\Menu;
use App\Models\Menu_basic;
use App\Models\Menu_item;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
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
            Menu_basic::factory()->state([
                'date' => date_date_set(now(), '2023', '9', $i),
                'name_menu' => 'Завтрак'
        ])->create();
            Menu_basic::factory()->state([
                'date' => date_date_set(now(), date('Y'), date('m'), $i),
                'name_menu' => 'Обед'
            ])->create();
        }
        // Создаем 50 блюд
        Menu_item::factory(50)->create();
        // Создаем 60 меню
        for ($i = 1; $i < 61; $i++){
            for ($j = 1; $j < 5; $j++) {
                Menu::factory()->state([
                    'menu_basic_id' => Menu_basic::find($i)->id,
                    'menu_item_id' => Menu_item::all()->random()->id,
                ])->create();
            }
        }
    }
}

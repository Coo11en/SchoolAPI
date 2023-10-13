<?php

namespace Database\Factories;

use App\Models\MenuBasic;
use App\Models\MenuItem;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Menu>
 */
class MenuFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'menu_basic_id' => MenuBasic::factory(),
            'menu_item_id' => MenuItem::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

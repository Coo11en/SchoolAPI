<?php

namespace Database\Factories;

use App\Models\Menu_basic;
use App\Models\Menu_item;
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
            'menu_basic_id' => Menu_basic::factory(),
            'menu_item_id' => Menu_item::factory(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

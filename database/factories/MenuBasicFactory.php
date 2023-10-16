<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\MenuBasic>
 */
class MenuBasicFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $DateUp = fake()->dateTimeBetween('-5 years', '-1 hours', null);

        return [
            'menu_title' => 'Меню ежедневного горячего питания',
            'date' => now(),
            'name_menu' => fake()->randomElement(['Завтрак', 'Обед']),
            'price' => fake()->randomFloat(0, 10, 200),
            'created_at' => $DateUp,
            'updated_at' => fake()->dateTimeBetween($DateUp, '-1 hours', null),
        ];
    }
}

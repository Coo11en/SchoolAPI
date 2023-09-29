<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Menu_item>
 */
class Menu_itemFactory extends Factory
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
            'name_dish' => fake()->text(25),
            'dish_output' => fake()->randomFloat(0, 30, 300).' гр.',
            'created_at' => $DateUp,
            'updated_at' => fake()->dateTimeBetween($DateUp, '-1 hours', null),
        ];
    }
}

<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
 */
class AppealCategoryFactory extends Factory
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
            'name'=> fake()->text(50),
            'description' => fake()->text(300),
            'created_at' => $DateUp,
            'updated_at' => fake()->dateTimeBetween($DateUp, '-1 hours', null),
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\Categories_appeal;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
 */
class AppealFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name'=> fake()->text(200),
            'email' => fake()->unique()->safeEmail(),
            'description' => fake()->text(3000),
            'status' => false,
            'response' => fake()->text(255),
            'category_id' => Appeals_categoryFactory::factory(),
            'top_questions' => false,
            'date_completion' => null,
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

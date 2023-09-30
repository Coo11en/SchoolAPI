<?php

namespace Database\Factories;

use App\Models\Appeals_category;
use \Database\Factories\Appeals_categoryFactory;
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

        $DateUp = fake()->dateTimeBetween('-5 years', '-1 hours', null);

        return [
            'name'=> fake()->text(200),
            'email' => fake()->unique()->safeEmail(),
            'question' => fake()->text(300),
            'status' => false,
            'response' => fake()->text(3000),
            'category_id' => Appeals_category::factory(),
            'top_questions' => fake()->randomElement([true, false]),
            'date_completion' => fake()->randomElement([now(), null]),
            'created_at' => $DateUp,
            'updated_at' => fake()->dateTimeBetween($DateUp, '-1 hours', null),
        ];
    }
}

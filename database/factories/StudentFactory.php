<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            //'username'=> fake()->text(20),
            //'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            //'token' => Str::random(10),
            'user_id' => User::factory(),
            'name' => $this->faker->firstName(),
            'surname' => $this->faker->lastName(),
            'patronymic' => $this->faker->text(20),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

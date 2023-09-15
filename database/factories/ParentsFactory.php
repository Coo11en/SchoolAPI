<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Parents>
 */
class ParentsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'username'=> fake()->text(20),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'name' => fake()->text(20),
            'surname' => fake()->text(20),
            'patronymic' => fake()->text(20),
            'email' => fake()->unique()->safeEmail(),
            'phone' => $this->faker->phoneNumber,
            'token' => Str::random(10),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\Photo;
use App\Models\Roles;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends Factory
 */
class TeacherFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id' => $this->faker->uuid(),
            'username' => $this->faker->word(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'name' => fake()->text(20),
            'surname' => fake()->text(20),
            'patronymic' => fake()->text(20),
            'job_title' => fake()->text(250),
            'role_id' => Roles::factory(),
            'email' => fake()->unique()->safeEmail(),
            'phone' => $this->faker->phoneNumber,
            'birthday' => $this->faker->date,
            'main_photo_id' => Photo::factory(),
            'token' => Str::random(10),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\User;
use Backpack\PermissionManager\app\Models\Role;
use Illuminate\Database\Eloquent\Factories\Factory;

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
            'user_id' => User::factory(),
            'main_photo_id' => null,
            'name' => fake()->firstName(),
            'surname' => fake()->lastName(),
            'patronymic' => fake()->text(20),
            'job_title' => json_encode([
                fake()->text(30),
                fake()->text(30)],
            ),
            //'role_id' => Role::factory(),
            'role_id' => fake()->randomNumber(1,3),
            'created_at' => now(),
            'updated_at' => now(),
            'speciality' => fake()->text(20),
            'education' => fake()->text(40),
            'totalExperience' => fake()->randomFloat(0, 5, 55),
            'generalTeachingExperience' => fake()->randomFloat(0, 5, 55),
            'qualification' => fake()->text(40),
            'isAdministration' => fake()->randomElement([true, false]),
        ];
    }
}

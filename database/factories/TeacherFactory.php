<?php

namespace Database\Factories;

use App\Models\Photo;
use App\Models\Roles;
use App\Models\User;
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
            'user_id' => User::factory(),
            'main_photo_id' => Photo::factory(),
            'name' => fake()->firstName(),
            'surname' => fake()->lastName(),
            'patronymic' => fake()->text(20),
            'job_title' => json_encode([
                fake()->text(30),
                fake()->text(30)],
            ),
            'role_id' => Roles::factory(),
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

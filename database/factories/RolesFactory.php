<?php

namespace Database\Factories;

use App\Models\Roles;
use Illuminate\Database\Eloquent\Factories\Factory;

class RolesFactory extends Factory
{
    public function definition(): array
    {
        return [
            'role_name' => fake()->randomElement(['Учащийся', 'Учитель', 'Администратор']),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

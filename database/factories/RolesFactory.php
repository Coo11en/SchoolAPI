<?php

namespace Database\Factories;

use App\Models\Roles;
use Illuminate\Database\Eloquent\Factories\Factory;

class RolesFactory extends Factory
{
    public function definition(): array
    {
        return [
            'id' => $this->faker->uuid(),
            'role_name' => 'Учитель',
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}

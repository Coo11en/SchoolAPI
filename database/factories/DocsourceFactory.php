<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Docsource>
 */
class DocsourceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'documentName' => $this->faker->unique()->name(),
            'documentSource' => $this->faker->unique()->imageUrl(),
            'documentType' => 'PDF',
            'created_at' => now(),
            'updated_at' => now()        ];
    }
}

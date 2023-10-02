<?php

namespace Database\Factories;

use App\Models\Chapter;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Section>
 */
class SectionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'chapter_id' => Chapter::inRandomOrder()->first()->id,
            'sectionTitle' => $this->faker->unique()->sentence,
            'sectionText' => $this->faker->randomHtml,
            'sequence' => 500,
            'status' => 'active',
            'created_at' => now(),
            'updated_at' => now()        ];
    }
}

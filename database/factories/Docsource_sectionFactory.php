<?php

namespace Database\Factories;

use App\Models\Docsource;
use App\Models\Section;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Docsource_section>
 */
class Docsource_sectionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'docsource_id' => Docsource::inRandomOrder()->first()->id,
            'section_id' => Section::inRandomOrder()->first()->id,
            'created_at' => now(),
            'updated_at' => now()        ];
    }
}

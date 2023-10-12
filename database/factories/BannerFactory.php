<?php

namespace Database\Factories;

use App\Models\Chapter;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class BannerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'slug' => Chapter::inRandomOrder()->first()->id,
            'bannerTitle' => $this->faker->word(),
            'img' => $this->faker->image(),
            'ref' => $this->faker->url(),
            'created_at' => now(),
            'updated_at' => now()
        ];
    }
}

<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AlbumResource>
 */
class AlbumFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->sentence(),
            'nameEng' => $this->faker->word(),
            'mainImg' => $this->faker->url(),
            'images' => [$this->faker->url(),$this->faker->url(),$this->faker->url()]
        ];
    }
}

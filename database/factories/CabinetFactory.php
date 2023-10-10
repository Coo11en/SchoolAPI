<?php

declare(strict_types=1);

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory
 */
class CabinetFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {

        $cabinets_img = [
            'http://филипповская-школа.рф/wp-content/uploads/2020/09/ikt.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2020/09/teh1.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2020/09/teh2.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2020/09/bibl1.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2020/09/sport1.jpg',
        ];

        $cabinets_arr = [$cabinets_img[array_rand($cabinets_img)], $cabinets_img[array_rand($cabinets_img)], $cabinets_img[array_rand($cabinets_img)], $cabinets_img[array_rand($cabinets_img)]];

        return [
            'name' => $this->faker->text(50),
            'number' => $this->faker->numberBetween(100,200),
            'description'  => $this->faker->text(150),
            'images'  => json_encode([
                $cabinets_img[array_rand($cabinets_img)],
                $cabinets_img[array_rand($cabinets_img)],
                $cabinets_img[array_rand($cabinets_img)],
                $cabinets_img[array_rand($cabinets_img)],
            ]),
            'created_at' => now(),
            'updated_at' => now()
        ];
    }
}

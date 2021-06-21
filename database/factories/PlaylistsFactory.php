<?php

namespace Database\Factories;

use App\Models\Playlists;
use Illuminate\Database\Eloquent\Factories\Factory;

class PlaylistsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Playlists::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */


    public function definition()
    {
        return [
            'title' => $this->faker->sentence(2),
            'description' => $this->faker->name(),
            'author' => $this->faker->name()
        ];
    }
}

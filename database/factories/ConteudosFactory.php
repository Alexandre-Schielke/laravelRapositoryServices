<?php

namespace Database\Factories;

use App\Models\Conteudos;
use App\Models\Playlists;
use Illuminate\Database\Eloquent\Factories\Factory;

class ConteudosFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Conteudos::class;


    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        return [
            'playlist_id' => function () {
                return Playlists::factory()->create()->id;
            },
            'title' => $this->faker->sentence(2),
            'url' => $this->faker->url,
            'author' => $this->faker->name()
        ];

    }
}

<?php

namespace Database\Seeders;

use App\Models\Conteudos;
use Illuminate\Database\Seeder;

class ConteudosTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       Conteudos::factory()->count(50)->create();
    }
}

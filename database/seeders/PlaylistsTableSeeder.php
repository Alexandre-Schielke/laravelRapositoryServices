<?php

namespace Database\Seeders;

use App\Models\Playlists;
use Illuminate\Database\Seeder;

class PlaylistsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Playlists::factory()->count(50)->create();
    }
}

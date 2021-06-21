<?php

namespace App\Interfaces;

use Illuminate\Http\Request;
interface PlaylistInterface
{
    public function getAll();

    public function store(array $data);

    public function update(array $data);

    public function show($id);

    public function destroy($id);
}

<?php

namespace App\Interfaces;

use App\Models\Conteudos;

interface ConteudoInterface
{
    public function __construct(Conteudos $conteudos);

    public function get($id);

    public function store(array $data);

    public function update(array $data);

    public function destroy($id);

}

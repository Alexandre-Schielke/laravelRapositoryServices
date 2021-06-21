<?php

namespace App\Services;

use App\Interfaces\ConteudoInterface;
use App\Interfaces\PlaylistInterface;
use App\Traits\ResponseAPI;


use Illuminate\Support\Facades\Validator;


class PlaylistService
{
    //Traits Response
    use ResponseAPI;
    private $repo;

    public function __construct(PlaylistInterface $repo)
    {
        $this->repo = $repo;
    }

    public function getAll()
    {
        return $this->repo->getAll();
    }

    public function show($id)
    {
        return $this->repo->show($id);
    }

    public function update(array $data)
    {
        $rules = [
            'title' => 'required|max:100',
            'description' => 'max:200',
            'author' => 'required|max:150',
        ];
        $messages = [
            'required' => 'O :attribute é um campo obrigatório.',
            'size' => 'O limit de caracter do campo  :attribute é de :size caracter.',
        ];

        $validator = Validator::make($data, $rules, $messages);

        if ($validator->fails()) {
            return $this->error($validator->errors());
        }else{
            return $this->repo->update($data);
        }
    }

    public function store(array $data)
    {
        $rules = [
            'title' => 'required|max:100',
            'description' => 'max:200',
            'author' => 'required|max:150',
        ];
        $messages = [
            'required' => 'O :attribute é um campo obrigatório.',
            'size' => 'O limit de caracter do campo  :attribute é de :size caracter.',
        ];

        $validator = Validator::make($data, $rules, $messages);

        if ($validator->fails()) {
            return $this->error($validator->errors());
        }else{
            return $this->repo->store($data);
        }
    }

    public function destroy($id)
    {
        return $this->repo->destroy($id);
    }

}

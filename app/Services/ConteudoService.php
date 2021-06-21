<?php

namespace App\Services;

use App\Interfaces\ConteudoInterface;
use App\Traits\ResponseAPI;


use Illuminate\Support\Facades\Validator;


class ConteudoService
{
    //Traits Response
    use ResponseAPI;
    private $repo;

    public function __construct(ConteudoInterface $repo)
    {
        $this->repo = $repo;
    }

    public function get($id)
    {
        return $this->repo->get($id);
    }

    public function store(array $data)
    {
        $rules = [
            'title' => 'required|max:150',
            'url' => 'max:255',
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

    public function update(array $data)
    {
        $rules = [
            'title' => 'required|max:150',
            'url' => 'max:255',
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

    public function destroy($id)
    {
        return $this->repo->destroy($id);
    }

}

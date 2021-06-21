<?php


namespace App\Repositories;

use App\Interfaces\ConteudoInterface;
use App\Models\Conteudos;

class ConteudoRepository implements ConteudoInterface
{
    private $model;

    public function __construct(Conteudos  $conteudos)
    {
        $this->model = $conteudos;
    }

    public function get($id)
    {
        return $this->model->find($id);
    }

    public function store(array $data){
        return $this->model->create($data);
    }

    public function update(array $data)
    {
        $conteudo = $this->model->find($data['id']);
        $conteudo->update($data);
        return $conteudo;
    }

    public function destroy($id)
    {
        $conteudo = $this->model->find($id);
        $conteudo->delete();
        return $conteudo;
    }

}

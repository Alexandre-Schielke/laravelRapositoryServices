<?php
namespace App\Repositories;


use App\Interfaces\PlaylistInterface;
use App\Models\Playlists;
use App\Traits\ResponseAPI;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PlaylistRepository implements PlaylistInterface
{
    private $model;

    public function __construct(Playlists  $playlists)
    {
        $this->model = $playlists;
    }

    public function getAll()
    {
        $playlists = $this->model
            ->select('id','title', 'description', 'author',  'created_at' )
            ->with('contents')
            ->paginate(10);
        $playlists->makeHidden("id");
        return $playlists;
    }

    public function show($id)
    {
        return $this->model->find($id);
    }

    public function update(array $data)
    {
        $playlist = $this->model->find($data['id']);
        $playlist->update($data);
        return $playlist;
    }

    public function store(array $data)
    {
        return $this->model->create($data);
    }

    public function destroy($id)
    {
        $conteudo = $this->model->find($id);
        $conteudo->delete();
        return $conteudo;
    }
}

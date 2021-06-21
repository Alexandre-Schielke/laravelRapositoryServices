<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\PlaylistService;
use App\Traits\ResponseAPI;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class PlaylistsController extends Controller
{
    protected  $playlistInterface;

    use ResponseAPI;
    private $service;

    public function __construct(PlaylistService $service)
    {
        $this->service = $service;
    }

    public function index()
    {
        try {
            return $this->success($this->service->getAll());
        } catch(\Exception $e) {
            return $this->error($e->getMessage());
        }
    }

    public function show($id)
    {
        try {
            return $this->success($this->service->show($id));
        } catch(\Exception $e) {
            return $this->error($e->getMessage());
        }
    }


    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            DB::commit();
            return $this->service->store($request->all());
        } catch(\Exception $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    public function update(Request $request)
    {
        DB::beginTransaction();
        try {
            DB::commit();
            return $this->service->update($request->all());
        } catch(\Exception $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    public function destroy($id)
    {
        return $this->service->destroy($id);
    }
}

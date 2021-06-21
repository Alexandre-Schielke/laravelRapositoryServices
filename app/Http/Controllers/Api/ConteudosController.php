<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Services\ConteudoService;
use App\Traits\ResponseAPI;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ConteudosController extends Controller
{
    use ResponseAPI;
    private $service;

    public function __construct(ConteudoService $service)
    {
        $this->service = $service;
    }

    public function show($id)
    {
        try {
            return $this->success($this->service->get($id));
        } catch(\Exception $e) {
            return $this->error($e->getMessage());
        }
    }

    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            DB::commit();
            return $this->success($this->service->store($request->all()));
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
            return $this->success($this->service->update($request->all()));
        } catch(\Exception $e) {
            DB::rollBack();
            return $this->error($e->getMessage());
        }
    }

    public function destroy($id)
    {
        try {
            return $this->success($this->service->destroy($id));
        } catch(\Exception $e) {
            return $this->error($e->getMessage());
        }
    }
}

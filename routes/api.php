<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Api\UserController;
use \App\Http\Controllers\Api\PlaylistsController;
use \App\Http\Controllers\Api\ConteudosController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

//Route::resource('users', 'Api\UserController');

Route::group(['namespace' => 'api'], function () {
    Route::post('/v1/playlists', [PlaylistsController::class, 'store']);
    Route::put('/v1/playlists', [PlaylistsController::class, 'update']);
    Route::get('/v1/playlists', [PlaylistsController::class, 'index']);
    Route::get('/v1/playlists/{id}', [PlaylistsController::class, 'show']);
    Route::delete('/v1/playlists/{id}', [PlaylistsController::class, 'destroy']);

    Route::post('/v1/contents', [ConteudosController::class, 'store']);
    Route::put('/v1/contents', [ConteudosController::class, 'update']);
    Route::get('/v1/contents', [ConteudosController::class, 'index']);
    Route::get('/v1/contents/{id}', [ConteudosController::class, 'show']);
    Route::delete('/v1/contents/{id}', [ConteudosController::class, 'destroy']);
});


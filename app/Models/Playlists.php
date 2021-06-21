<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Playlists extends Model
{
    use HasFactory;
    protected $table = 'playlists';
    protected $primarykey = 'id';
    protected $fillable = [
        'id',
        'title',
        'description',
        'author'
    ];

    protected $casts = [
        'created_at' => 'datetime:d/m/Y'
    ];

    public function contents(){
        return $this->hasMany(Conteudos::class, 'playlist_id', 'id' );
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Conteudos extends Model
{
    use HasFactory;
    protected $table = 'conteudos';
    protected $primarykey = 'id';
    protected $fillable = [
        'playlist_id',
        'title',
        'url',
        'author'
    ];
    protected $visible = [
        'title',
        'url',
        'author'
    ];
}

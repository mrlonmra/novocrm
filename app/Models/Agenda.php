<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{
    use HasFactory;

    protected $fillable = [
        'nomeCliente',
        'cliente_id',
        'procedimento',
        'valor',
        'description',
        'hours',
        'start',
        'end',
    ];

    public $timestamps = true;
}

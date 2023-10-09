<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Procedimentos extends Model
{
    use HasFactory;

    protected $fillable = [
        'procedimento',
        'valor',
        'categoria',
        'duration',
    ];
}

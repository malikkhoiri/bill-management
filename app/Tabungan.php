<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tabungan extends Model
{
    //
    protected $table = 'tabungans';

    protected $fillable = [
        'atas_nama',
        'rekening',
        'nama_bank',
    ];

}

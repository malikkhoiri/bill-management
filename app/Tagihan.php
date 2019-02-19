<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tagihan extends Model
{
    //
    protected $table = 'tagihans';

    protected $fillable = [
        'nama_tag',
        'total_tag',
        'description_tag',
        'status_tag',
    ];
}

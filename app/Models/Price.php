<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Session;

class Price extends Model
{
    use HasFactory;
    protected $table = 'prices';

    public function getAll(){
        return  DB::table('prices')->get();
    }

    public function getDateAttribute(){
        return date('d-m-Y', strtotime($this->attributes['updated_at']));
    }
}

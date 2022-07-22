<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use HasFactory;

    protected $table   = 'payout_settings';

    public function payment_setings(){

    	return $this->belongsTo('App\Models\PayoutSetting', 'type', 'is_active');

    }
}

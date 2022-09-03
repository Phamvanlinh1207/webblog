<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $table = 'orders';
    public $timestamps = true;

    protected $fillable = [
        'code',
        'status',
        'user_id',        
    ];

    use HasFactory;


    public function OrderDetail(){
        return $this->hasMany(OrderDetail::class);
    }

    public function User(){
        return $this->belongsTo(User::class);
    }
    
}

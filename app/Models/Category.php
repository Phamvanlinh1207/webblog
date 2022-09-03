<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'name',
        'description',
    ];
    // các thuộc tính cần được ẩn cho các mảng
    protected $hidden = [
    ];
    //một danh mục có nhiều sản phẩm
    public function products(){
        return $this->hasMany(Product::class);
    }
   
}

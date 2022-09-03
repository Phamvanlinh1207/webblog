<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

    protected $fillable = [
        'name',
        'img',
        'description',
        'price',
        'quantity',
        'category_id',
    ];
    // các thuộc tính cần được ẩn cho các mảng
    protected $hidden = [

    ];
    use HasFactory;
    //Mối quan hệ
    //một sản phẩm thuộc 1 danh mục
    public function Category(){
        return $this->belongsTo(Category::class);
    }
}

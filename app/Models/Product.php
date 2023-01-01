<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    public function catagory()
    {
        return $this->belongsTo(Catagory::class);
    }
    public function supplier()
    {
        return $this->belongsTo(Supplier::class);
    }
    public function sales()
    {
        return $this->hasMany(Sale::class);
    }
}

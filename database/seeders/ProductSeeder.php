<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $unit=['kg', 'gm', 'dozon', 'hali', 'piece', 'litter'];
        echo $unit[array_rand($unit, 1)];
        for ($i=1; $i <=100; $i++) { 
            Product::create([
                'name'=>fake()->name(),
                'description'=>fake()->text(),
                'catagory_id'=>rand(203,500),
                'supplier_id'=>rand(207,500),
                'unitprice'=>rand(100,10000),
                'saleprice'=>rand(100,10000),
                'unit'=> $unit[array_rand($unit, 1)],
                'unitvalue'=>rand(1,4),
                'quantity'=>rand(10,100),
                // 'weight'=>rand(1,9),
                // 'discount'=>rand(1,4),
                'image'=>fake()->imageUrl($width = 640, $height = 480),
                // 'dimention'=>fake()->name(),
                // 'option1'=>fake()->name(),
                // 'option2'=>fake()->name(),
                // 'option3'=>fake()->name(),
                // 'option4'=>fake()->name(),
                // 'option5'=>fake()->name(),
            ]);
        }
    }
}

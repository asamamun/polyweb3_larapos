<?php

namespace Database\Seeders;

use App\Models\Catagory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CatagorySedder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <=100; $i++) { 
            Catagory::create([
                'name'=>fake()->name(),
                'description'=>fake()->text(),
                'icon'=>fake()->imageUrl($width = 640, $height = 480),
            ]);
        }
    }
}

<?php

namespace Database\Seeders;

use App\Models\Supplier;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SupplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <=100; $i++) { 
            Supplier::create([
                'name'=>fake()->name(),
                'email'=>fake()->email(),
                'phone'=>fake()->phoneNumber(),
                'address'=>fake()->address(),
                'option1'=>fake()->name(),
                'option2'=>fake()->name(),
                'option3'=>fake()->name(),
            ]);
        }
    }
}

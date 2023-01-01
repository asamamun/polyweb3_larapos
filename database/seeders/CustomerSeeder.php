<?php

namespace Database\Seeders;

use App\Models\Customer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=1; $i <=100; $i++) { 
            Customer::create([
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

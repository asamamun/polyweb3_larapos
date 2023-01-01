<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string("name");
            $table->text("description");

            //foreign key
            $table->unsignedBigInteger('catagory_id');
            $table->foreign('catagory_id')->references('id')->on('catagories');
            //foreign key
            $table->unsignedBigInteger('supplier_id');
            $table->foreign('supplier_id')->references('id')->on('suppliers');

            $table->float("unitprice");
            $table->float("saleprice");
            $table->set("unit",['kg','gm','dozon','hali','piece','litter']);
            $table->tinyInteger("unitvalue")->nullable();
            $table->integer("quantity")->nullable();
            $table->string("weight")->nullable();
            $table->tinyInteger("discount")->nullable();
            $table->string("image")->nullable();
            $table->string("dimention")->nullable();
            $table->string("option1")->nullable();
            $table->string("option2")->nullable();
            $table->string("option3")->nullable();
            $table->string("option4")->nullable();
            $table->string("option5")->nullable();
            $table->set("status", ["0", "1"])->default("1");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up() {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('category_id')->unsigned()->nullable();
            $table->bigInteger('unit_id')->unsigned()->nullable();
            $table->decimal('unit_number', 10, 2)->nullable();
            $table->string('slug');
            $table->string('op_name')->nullable();
            $table->decimal('price', 10, 2)->unsigned();
            $table->decimal('special_price', 10, 2)->unsigned()->nullable();
            $table->boolean('in_stock');
            $table->bigInteger('viewed')->unsigned()->default(0);
            $table->boolean('is_active');
            $table->string('thumbnail')->nullable();
            $table->string('banner')->nullable();
            $table->string('product_type', 20)->default('general');
            $table->string('xitem')->nullable();
            $table->timestamps();

            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down() {
        Schema::dropIfExists('products');
    }
}

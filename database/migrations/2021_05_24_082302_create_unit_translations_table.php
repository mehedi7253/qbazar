<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUnitTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('unit_translations', function (Blueprint $table) {
            $table->id();
			$table->bigInteger('unit_id')->unsigned();
            $table->string('locale');
			$table->string('name');
			$table->string('short_name');
            $table->timestamps();
			
			$table->unique(['unit_id', 'locale']);
            $table->foreign('unit_id')->references('id')->on('units')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('unit_translations');
    }
}

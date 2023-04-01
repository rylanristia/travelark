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
        Schema::create('trip_packages', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('created_by');
            $table->string('level');
            $table->bigInteger('destination_id');
            $table->bigInteger('guide_id');
            $table->integer('duration');
            $table->double('price');
            $table->timestamps();

            $table->foreign('destination_id')->references('id')->on('destinations');

            $table->foreign('guide_id')->references('id')->on('guides');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('trip_packages');
    }
};
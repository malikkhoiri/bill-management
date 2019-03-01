<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DorpColumnsTagihans extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::table('tagihans', function (Blueprint $table) {
            $table->integer('total_tag');
            $table->string('description_tag')->nullable();
            $table->enum("status_tag", array('aktif', 'nonaktif', 'selesai'));
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}

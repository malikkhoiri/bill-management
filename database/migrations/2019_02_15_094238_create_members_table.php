<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
            $table->increments('id_member');
            $table->integer('id_tag')->length(10)->unsigned();
            $table->integer('id')->length(10)->unsigned();
            $table->integer('id_tab')->length(10)->unsigned();
            $table->enum('status', array(1, 2, 3))->default(1);
            $table->timestamps();

            $table->foreign('id_tag')->references('id_tag')->on('tagihans');
            $table->foreign('id')->references('id')->on('users');
            $table->foreign('id_tab')->references('id_tab')->on('tabungans');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('members');
    }
}

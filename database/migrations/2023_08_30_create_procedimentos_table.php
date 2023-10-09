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
        Schema::create('procedimentos', function (Blueprint $table) {
            $table->id();
            $table->string('procedimento');
            $table->decimal('valor', 8, 2);  // O tipo decimal com 8 dígitos no total, 2 após a vírgula.
            $table->text('categoria');
            $table->timestamps();

            // Defina chaves estrangeiras, restrições ou outros detalhes conforme necessário
            // Exemplo:
            // $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('procedimentos');
    }
};

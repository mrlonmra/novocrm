<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
  public function up()
  {
    Schema::create('users', function (Blueprint $table) {
      $table->id();
      $table->unsignedBigInteger('id_tipo_usuario');
      $table->integer('id_patrao')->nullable();
      $table->string('status')->nullable();
      $table->string('name');
      $table->string('email')->unique();
      $table->timestamp('email_verified_at')->nullable();
      $table->string('password');
      $table->rememberToken();
      $table->timestamps();

      $table->foreign("id_tipo_usuario")->references("id")->on("tipos_de_usuarios")->name("fk_users_tipo_usuario");
    });
  }


  public function down()
  {
    Schema::dropIfExists('users');
  }
}
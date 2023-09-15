<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->id();
            $table->string('username', 20);
            $table->string('password',255);
            $table->string('name', 20);
            $table->string('surname', 20);
            $table->string('patronymic', 20);
            $table->string('job_title', 255)->nullable();
            $table->foreignId('role_id')->references('id')->on('roles');
            $table->string('email',100)->nullable();
            $table->string('phone',25)->nullable();
            $table->dateTime('birthday')->nullable();
            $table->char('main_photo_id', 36)->nullable();
            $table->string('token',255);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('teachers');
    }
};


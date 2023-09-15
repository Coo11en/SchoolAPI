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
        Schema::create('parents', function (Blueprint $table) {
            $table->id();
            $table->string('username', 20);
            $table->string('password', 255)->nullable();
            $table->string('name', 20)->nullable();
            $table->string('surname', 20)->nullable();
            $table->string('patronymic', 20)->nullable();
            $table->string('email', 100)->nullable();
            $table->string('phone', 25)->nullable();
            $table->string('token', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('parents');
    }
};

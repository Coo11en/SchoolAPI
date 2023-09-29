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
        Schema::create('menu_basics', function (Blueprint $table) {
            $table->id();
            $table->string('menu_title', 255);
            $table->timestamp('date');
            $table->string('name_menu', 100)->nullable(false);
            $table->string('price', 50);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('menu_basics');
    }
};

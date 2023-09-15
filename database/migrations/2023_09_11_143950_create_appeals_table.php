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
        Schema::create('appeals', function (Blueprint $table) {
            $table->id();
            $table->string('name', 200);
            $table->string('email', 255);
            $table->string('description', 3000);
            $table->boolean('status')->default(false);
            $table->string('response', 255)->nullable();
            $table->foreignId('category_id')->references('id')->on('appeals_categories');
            $table->boolean('top_questions')->default(false);
            $table->dateTime('date_completion')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('appeals');
    }
};

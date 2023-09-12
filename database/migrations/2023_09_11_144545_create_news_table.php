<?php

declare(strict_types=1);

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
        Schema::create('news', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->string('title', 255);
            $table->string('description', 3000)->nullable();
            $table->string('author', 100)->default('Admin');
            $table->foreignUuid('news_categories_id')->references('id')->on('news_categories');
            $table->foreignUuid('album_id')->references('id')->on('albums');
            $table->string('resource', 255)->nullable();
            $table->string('status',7)->nullable();
            $table->dateTime('pub_approve')->nullable();
            $table->string('video', 255)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('news');
    }
};

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
        Schema::create('docsource_section', function (Blueprint $table) {
            $table->id();
            $table->foreignId('docsource_id')->nullable()
                ->references('id')
                ->on('docsources')
                ->cascadeOnDelete();
            $table->foreignId('section_id')->nullable()
                ->references('id')
                ->on('sections')
                ->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('docsource_section');
    }
};

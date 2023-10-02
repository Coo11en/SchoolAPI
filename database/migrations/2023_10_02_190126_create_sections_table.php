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
        Schema::create('sections', function (Blueprint $table) {
            $table->id();
            $table->foreignId('chapter_id')->nullable()
                ->references('id')
                ->on('chapters')
                ->cascadeOnDelete();
            $table->string('sectionTitle')->unique()->nullable();
            $table->text('sectionText')->nullable();
            $table->integer('sequence')->nullable();
            $table->enum('status', ['active','draft'])->default('draft');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sections');
    }
};

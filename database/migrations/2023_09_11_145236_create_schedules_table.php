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
        Schema::create('schedules', function (Blueprint $table) {
            $table->uuid('id')->primary();
            $table->foreignUuid('subject_id')->references('id')->on('subjects');
            $table->foreignUuid('teacher_id')->references('id')->on('teachers');
            $table->string('week_day_name', 50);
            $table->foreignUuid('classroom_id')->references('id')->on('classrooms');
            $table->foreignUuid('call_schedule_id')->references('id')->on('call_schedule');
            $table->foreignUuid('day_id')->references('id')->on('days');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('schedules');
    }
};


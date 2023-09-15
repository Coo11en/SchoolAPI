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
            $table->id();
            $table->foreignId('subject_id')->references('id')->on('subjects');
            $table->foreignId('teacher_id')->references('id')->on('teachers');
            $table->string('week_day_name', 50);
            $table->foreignId('classroom_id')->references('id')->on('classrooms');
            $table->foreignId('call_schedule_id')->references('id')->on('call_schedules');
            $table->foreignId('day_id')->references('id')->on('days');
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


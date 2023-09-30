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
        Schema::table('teachers', function (Blueprint $table) {
            $table->dropColumn('username');
            $table->dropColumn('password');
            $table->string('patronymic', 30)->nullable()->change();
            $table->foreignId('user_id')
                ->after('id')
                ->references('id')
                ->on('users');
            $table->foreignId('main_photo_id')
                ->after('id')
                ->nullable()
                ->change()
                ->references('id')
                ->on('photos');
            $table->string('speciality')->nullable();
            $table->string('education')->nullable();
            $table->integer('totalExperience')->nullable();
            $table->integer('generalTeachingExperience')->nullable();
            $table->string('qualification')->nullable();
            $table->json('job_title')->change();
            $table->dropColumn('email');
            $table->dropColumn('phone');
            $table->dropColumn('birthday');
            $table->dropColumn('token');
            $table->boolean('isAdministration')
                ->default(false);
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

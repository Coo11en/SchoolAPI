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
        Schema::table('students', function (Blueprint $table) {
            $table->dropColumn('username');
            $table->dropColumn('password');
            $table->dropColumn('token');

            $table->foreignId('user_id')
                ->after('id')
                ->references('id')
                ->on('users')
                ->onDelete('cascade');;
            $table->string('name', 20)->after('user_id');
            $table->string('surname', 20)->after('name');
            $table->string('patronymic', 20)->after('surname')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};

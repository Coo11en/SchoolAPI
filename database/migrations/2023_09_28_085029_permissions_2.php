<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Lagoon\Reef\app\Helpers\PermissionHelper;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        PermissionHelper::addCrudPermissionsForRole('admin', 'acl');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};

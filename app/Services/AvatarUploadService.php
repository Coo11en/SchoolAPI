<?php

declare(strict_types=1);

namespace App\Services;

use App\Services\Contracts\Upload;
use Illuminate\Http\UploadedFile;

class AvatarUploadService implements Upload
{

    public function create(UploadedFile $uploadedFile): string
    {
        $path = $uploadedFile->storeAs('images/avatars', $uploadedFile->hashName(), 'public' );
        if ($path === false) {
            throw new \Exception('File was not uploaded');
        }

        return $path;
    }
}

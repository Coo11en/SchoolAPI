<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class BannerResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $slug = $this->chapter->slug ?? null;
        return [
            'slug' => $slug,
            'bannerTitle' => $this->bannerTitle,
            'img' => $this->img,
            'ref' => $this->ref
        ];
    }
}

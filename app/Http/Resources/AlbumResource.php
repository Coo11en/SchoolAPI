<?php

declare(strict_types=1);

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AlbumResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
 
        return [
            'id' => $this->id,
            'name' => $this->name,
            'nameEng' => $this->nameEng,
            'mainImage' => ($this->mainImg->first()) ? $this->mainImg->first()->img : null,
            'images' => PhotoResource::collection($this->photos)->map(function ($item, $key) {
                return $item->img;
            })
        ];
    }
}

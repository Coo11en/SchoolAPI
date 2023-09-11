<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Arr;

class AlbumResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $resultArr =[];
        $photos = $this->photos;
        foreach ($photos as $item) {
            $resultArr[] = $item->img;
        }

        return [
            'id' => $this->id,
            'name' => $this->name,
            'nameEng' => $this->nameEng,
            'mainImage' => $this->imgMain->img,
            'images' => $resultArr
        ];
    }
}

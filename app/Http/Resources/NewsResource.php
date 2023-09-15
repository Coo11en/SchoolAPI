<?php

declare(strict_types=1);

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class NewsResource extends JsonResource
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
          'title' => $this->title,
//          'author' => $this->author,
//          'image' => $this->image,
          'description' => $this->description,
           'created_at' => $this->created_at,
            'album' => new AlbumResource($this->albums)
        ];
    }
}

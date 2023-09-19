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
            'description' => $this->description,
            'text' => $this->text,
            'created_at' => $this->created_at,
            'mainImg' => ($this->albums->mainImg->first()) ? $this->albums->mainImg->first()->img : null,
            'images' => PhotoResource::collection($this->albums->photos)->map(function ($item) {
                return $item->img;
            }),
            'video' => $this->video,
            'source' => $this->source

        ];
    }
}

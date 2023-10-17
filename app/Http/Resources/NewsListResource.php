<?php

declare(strict_types=1);

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class NewsListResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        //dd($this->album);
        return [
          'id' => $this->id,
          'title' => $this->title,
//          'author' => $this->author,
          'description' => $this->description,
           'created_at' => $this->created_at,
            'mainImg' => ($this->album->mainImg->first()) ? $this->album->mainImg->first()->img : null,
        ];
    }
}

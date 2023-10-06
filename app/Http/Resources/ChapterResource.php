<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ChapterResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {

        //return parent::toArray($request);
        return [
            'сhapterId' => $this->id,
            'slug' => $this->slug,
            'chapterTitle' => $this->chapterTitle,
            'section' => SectionResource::collection($this->sections),
        ];
    }
}

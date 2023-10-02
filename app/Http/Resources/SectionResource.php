<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SectionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'sectionTitle' => $this->sectionTitle,
            'sectionText' => $this->sectionText,
            'sequence' => $this->sequence,
            'sectionDocumentIMG' => DocimageResource::collection($this->docimages),
            'sectionDocumentSource' => DocsourceResource::collection($this->docsources)
        ];
    }
}

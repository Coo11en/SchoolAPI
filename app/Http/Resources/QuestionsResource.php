<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class QuestionsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {

        if($this->top_questions) {
            return [
                'id' => $this->id,
                'question' => $this->question,
                'answer' => $this->response,
            ];
        } else
            return [];
    }
}

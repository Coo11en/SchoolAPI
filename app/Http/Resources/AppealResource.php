<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AppealResource extends JsonResource
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
            'email' => $this->email,
            'question' => $this->question,
            'status' => $this->status,
            'response' => $this->response,
            'category_id' => $this->category_id,
            'top_questions' => $this->top_questions,
            'date_completion' => $this->date_completion,
        ];
    }
}

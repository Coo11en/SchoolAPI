<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class Menu_basicResource extends JsonResource
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
            'menuTitle' => $this->menu_title,
            'date' => date('Y-m-d', strtotime ($this->date)),
            'nameMenu' => $this->name_menu,
            'price' => $this->price,
        ];
    }
}

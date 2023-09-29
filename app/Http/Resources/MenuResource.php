<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MenuResource extends JsonResource
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
            'menu_title' => $this->menu_title,
            'name_menu' => $this->name_menu,
            'price' => $this->price,
            'date' => $this->date,
            'menu' => Menu_itemResource::collection($this->menu_item)
        ];
    }
}

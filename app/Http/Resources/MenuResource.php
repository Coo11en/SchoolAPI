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
            'menuTitle' => $this->menu_title,
            'nameMenu' => $this->name_menu,
            'price' => $this->price,
            'date' => date('Y-m-d', strtotime ($this->date)),
            'menu' => Menu_itemResource::collection($this->menu_item)
        ];
    }
}

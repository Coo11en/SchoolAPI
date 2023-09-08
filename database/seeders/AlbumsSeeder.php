<?php

namespace Database\Seeders;

use App\Models\Album;
use App\Models\Photo;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AlbumsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       Album::factory()->count(3)->create();
       DB::table('album_photo')->insert($this->getAlbumPhotoData());
    }

    public function getAlbumPhotoData(): array
    {
        return [
            [ 'album_id' => Album::first()->id, 'photo_id' => Photo::first()->id],
            [ 'album_id' => Album::first()->id, 'photo_id' => Photo::first()->id+1],
            [ 'album_id' => Album::first()->id+1, 'photo_id' => Photo::first()->id+2],
            [ 'album_id' => Album::first()->id+1, 'photo_id' => Photo::first()->id+3],
            [ 'album_id' => Album::first()->id+2, 'photo_id' => Photo::first()->id+4],
            [ 'album_id' => Album::first()->id+2, 'photo_id' => Photo::first()->id+5],
            [ 'album_id' => Album::first()->id, 'photo_id' => Photo::first()->id+7],
            [ 'album_id' => Album::first()->id+1, 'photo_id' => Photo::first()->id+6],
            [ 'album_id' => Album::first()->id+2, 'photo_id' => Photo::first()->id+9],
            [ 'album_id' => Album::first()->id+1, 'photo_id' => Photo::first()->id+8],
        ];
    }
}

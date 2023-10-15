<?php

declare(strict_types=1);

namespace Database\Seeders;

use App\Models\Album;
use App\Models\Album_photo;
use App\Models\Photo;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PhotoAlbumSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $images = [
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/1-1.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpeg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpeg',
            'http://филипповская-школа.рф/wp-content/uploads/2023/05/4.jpeg',
            'https://sun9-west.userapi.com/sun9-4/s/v1/ig2/sWUPPhhHRwtFJAUU5_3KjKtpPNb4x_pn1gIenXGAuVGyNR_CkbhzQPqnGbVmL9T3vNML8a4szYdRlvFfXqY7CJEI.jpg?size=1600x1200&quality=95&type=album',
            'https://sun9-west.userapi.com/sun9-9/s/v1/ig2/kkYmhwmcOygjb_kykldvp7ntmUJUVNNNFQL-nt4Aa5JkvPxaNpN8ngU0Md5fwUwsA6f-5h6KBrgeCFDkALKgv9dJ.jpg?size=1024x768&quality=95&type=album',
            'https://sun9-west.userapi.com/sun9-56/s/v1/ig2/-n6XiLX-pYVjT_EbDQ4P6cyz8PYqwJFnLVX1ohihVy7kYfmZ1qa4mRKkHbr4ezvLcA-kOnt3YyLwoNSLVfPdZvTc.jpg?size=1280x960&quality=95&type=album',
            'https://sun9-4.userapi.com/impg/N4oiUQCC2N9eUFybwvsWPalSoJtVFO977dahhw/smIFagoFh5s.jpg?size=1280x960&quality=95&sign=f77a20100c3739d129f5158c2c840cfa&type=album',
            'https://sun1-24.userapi.com/impg/nOCvs5ci49XvFMX8_m4uwGl5LsgTV5XRkZJQ0Q/qIkdsmAlQRg.jpg?size=960x1280&quality=95&sign=09d1a93ff96422305f274d4c2b32542e&type=album',
            'https://sun9-73.userapi.com/impg/5zpFM-KfBYLfXE0H4LsDJBMecKJAkmDGRbgljw/B9i7WNu1Joc.jpg?size=1024x768&quality=95&sign=30578b97896519849c8c72dbf0cde87c&type=album',
            'https://sun9-38.userapi.com/impg/4OwbDkxTJgtI0Lj0o3E7z5XmJwlTJBP3xt39uA/ywvEbSmUJ7s.jpg?size=960x1280&quality=95&sign=0f338829f36b6844c2dcf4678aeedc9d&type=album',
            'https://sun9-49.userapi.com/impg/Fmj09NTyRHDmG6dZ7htkvXY4eLhscEdj9S4xfA/HLzRlhTprQo.jpg?size=1024x768&quality=95&sign=36113592a4fac26f7de4197c021a6f51&type=album',
            'https://sun9-35.userapi.com/impg/ykGxErDL3ff30dhejdL1t0y1KbwvxLszq30Pkw/PX4Gu5tW3tk.jpg?size=1280x960&quality=95&sign=ed3834403671db2e48ff8e5f8afd7558&type=album',
            'https://sun9-49.userapi.com/impg/jEhSkCl55aOaZQPoKMagg1Jr023FB2LWQTmmoQ/TzxDpaJm4Rc.jpg?size=1024x768&quality=95&sign=c6e92c75e02ded4fd44c179fbcc78fab&type=album',
            'https://sun9-79.userapi.com/impg/nRLw5un8FuuSooIeaD7skw4IQPwZoODCtsemHA/EEnuTEJioOU.jpg?size=1024x768&quality=95&sign=b8786e812566ab2e5e53f925dc981854&type=album',
            'https://sun9-25.userapi.com/impg/cO9ss1KBq3mWGiXcOI_EzPccUqRMIIsLHZGBzQ/jk_VOWMKzV4.jpg?size=1024x768&quality=95&sign=c1d29ba8532d2e4e79635e1243dca9c3&type=album',
            'https://sun9-44.userapi.com/impg/otcRtt-dkoVnq4c8gw--whl2odNHCVIPAt3EuA/WF5BlNYMik8.jpg?size=960x1280&quality=95&sign=46021dcef0892f89eb8171aa1cdcb5df&type=album',
            'https://sun9-60.userapi.com/impg/ppVO2nKsd-vgZY111Ls2PxtFmiLFiaxE1lx-xw/mmM9jnaS2Mk.jpg?size=960x1280&quality=95&sign=67a2558b998536b71cf580bdc70a6658&type=album',
        ];

// Seed 20 Photo
//        foreach ($images as $img) {
//            Photo::factory()->state(['img' => $img])->create();
//        }
        DB::table('photos')->insert($this->getPhotosData());
        //
// Seed 2 Album
        Album::factory(3)->create();

// Seed album_photo
        for ($i = 1; $i < 21; $i++){
            Album_photo::factory()->state([
                'photo_id' => Photo::find($i)->id,
                'main_img' => ($i > 3) ? 0 : 1,
                'album_id' => ($i > 3) ? Album::all()->random()->id : $i,
            ])->create();
        }
    }

    public function getPhotosData(): array
    {
        return [
            ['img' => 'http://филипповская-школа.рф/wp-content/uploads/2023/05/1-1.jpg'],
            ['img' => 'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpg'],
            ['img' => 'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpg'],
            ['img' => 'http://филипповская-школа.рф/wp-content/uploads/2023/05/2.jpeg'],
            ['img' => 'http://филипповская-школа.рф/wp-content/uploads/2023/05/3.jpeg'],
            ['img' => 'http://филипповская-школа.рф/wp-content/uploads/2023/05/4.jpeg'],
            ['img' => 'https://sun9-west.userapi.com/sun9-4/s/v1/ig2/sWUPPhhHRwtFJAUU5_3KjKtpPNb4x_pn1gIenXGAuVGyNR_CkbhzQPqnGbVmL9T3vNML8a4szYdRlvFfXqY7CJEI.jpg?size=1600x1200&quality=95&type=album'],
            ['img' => 'https://sun9-west.userapi.com/sun9-9/s/v1/ig2/kkYmhwmcOygjb_kykldvp7ntmUJUVNNNFQL-nt4Aa5JkvPxaNpN8ngU0Md5fwUwsA6f-5h6KBrgeCFDkALKgv9dJ.jpg?size=1024x768&quality=95&type=album'],
            ['img' => 'https://sun9-west.userapi.com/sun9-56/s/v1/ig2/-n6XiLX-pYVjT_EbDQ4P6cyz8PYqwJFnLVX1ohihVy7kYfmZ1qa4mRKkHbr4ezvLcA-kOnt3YyLwoNSLVfPdZvTc.jpg?size=1280x960&quality=95&type=album'],
            ['img' => 'https://sun9-4.userapi.com/impg/N4oiUQCC2N9eUFybwvsWPalSoJtVFO977dahhw/smIFagoFh5s.jpg?size=1280x960&quality=95&sign=f77a20100c3739d129f5158c2c840cfa&type=album'],
            ['img' => 'https://sun1-24.userapi.com/impg/nOCvs5ci49XvFMX8_m4uwGl5LsgTV5XRkZJQ0Q/qIkdsmAlQRg.jpg?size=960x1280&quality=95&sign=09d1a93ff96422305f274d4c2b32542e&type=album'],
            ['img' => 'https://sun9-73.userapi.com/impg/5zpFM-KfBYLfXE0H4LsDJBMecKJAkmDGRbgljw/B9i7WNu1Joc.jpg?size=1024x768&quality=95&sign=30578b97896519849c8c72dbf0cde87c&type=album'],
            ['img' => 'https://sun9-38.userapi.com/impg/4OwbDkxTJgtI0Lj0o3E7z5XmJwlTJBP3xt39uA/ywvEbSmUJ7s.jpg?size=960x1280&quality=95&sign=0f338829f36b6844c2dcf4678aeedc9d&type=album'],
            ['img' => 'https://sun9-49.userapi.com/impg/Fmj09NTyRHDmG6dZ7htkvXY4eLhscEdj9S4xfA/HLzRlhTprQo.jpg?size=1024x768&quality=95&sign=36113592a4fac26f7de4197c021a6f51&type=album'],
            ['img' => 'https://sun9-35.userapi.com/impg/ykGxErDL3ff30dhejdL1t0y1KbwvxLszq30Pkw/PX4Gu5tW3tk.jpg?size=1280x960&quality=95&sign=ed3834403671db2e48ff8e5f8afd7558&type=album'],
            ['img' => 'https://sun9-49.userapi.com/impg/jEhSkCl55aOaZQPoKMagg1Jr023FB2LWQTmmoQ/TzxDpaJm4Rc.jpg?size=1024x768&quality=95&sign=c6e92c75e02ded4fd44c179fbcc78fab&type=album'],
            ['img' => 'https://sun9-79.userapi.com/impg/nRLw5un8FuuSooIeaD7skw4IQPwZoODCtsemHA/EEnuTEJioOU.jpg?size=1024x768&quality=95&sign=b8786e812566ab2e5e53f925dc981854&type=album'],
            ['img' => 'https://sun9-25.userapi.com/impg/cO9ss1KBq3mWGiXcOI_EzPccUqRMIIsLHZGBzQ/jk_VOWMKzV4.jpg?size=1024x768&quality=95&sign=c1d29ba8532d2e4e79635e1243dca9c3&type=album'],
            ['img' => 'https://sun9-44.userapi.com/impg/otcRtt-dkoVnq4c8gw--whl2odNHCVIPAt3EuA/WF5BlNYMik8.jpg?size=960x1280&quality=95&sign=46021dcef0892f89eb8171aa1cdcb5df&type=album'],
            ['img' => 'https://sun9-60.userapi.com/impg/ppVO2nKsd-vgZY111Ls2PxtFmiLFiaxE1lx-xw/mmM9jnaS2Mk.jpg?size=960x1280&quality=95&sign=67a2558b998536b71cf580bdc70a6658&type=album'],
        ];
    }
}

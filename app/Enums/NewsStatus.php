<?php

declare(strict_types=1);

namespace App\Enums;

enum NewsStatus: sting
{
    case DRAFT = 'draft';

    case ACTIVE = 'active';

    case BLOCKED = 'blocked';

    public static function all(): array
    {
        return [
            self::DRAFT->value,
            self::ACTIVE->value,
            self::BLOCKED->value,
        ];

    }
}

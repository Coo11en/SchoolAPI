<?php

/**
 * Backpack\CRUD preferences.
 */

return [

    /*
    |-------------------
    | TRANSLATABLE CRUDS
    |-------------------
    */

    'show_translatable_field_icon'     => true,
    'translatable_field_icon_position' => 'right', // left or right

    'locales' => [
        'ru'=> 'Russian',
        'en' => 'English',
    ],

    'view_namespaces' => [
        'buttons' => [
            'crud::buttons', // falls back to 'resources/views/vendor/backpack/crud/buttons'
            'backpack.pro::buttons',
        ],
        'columns' => [
            'crud::columns', // falls back to 'resources/views/vendor/backpack/crud/columns'
            'backpack.pro::columns',
        ],
        'fields' => [
            'crud::fields', // falls back to 'resources/views/vendor/backpack/crud/fields'
            'backpack.pro::fields',
        ],
        'filters' => [
            'backpack.pro::filters', // falls back to 'resources/views/vendor/backpack/crud/filters'
            'crud::filters',
        ],
    ],

];

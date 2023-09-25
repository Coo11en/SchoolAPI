<?php

return [
    /*
    |--------------------------------------------------------------------------
    | Нужно ли применять проверку доступов
    |--------------------------------------------------------------------------
    |
    */
    'permissions_enabled' => env('PERMISSIONS_ENABLED', false),
    'login_as_allowed' => false,
    'log_user_actions' => env('REEF_LOG_USER_ACTIONS', false),
    /*
    |--------------------------------------------------------------------------
    | Правила валидации пароля
    | Сюда нужно указать все правила валидации, кроме confirmed
    | Правило confirmed будет добавлено автоматически там, где это необходимо
    |--------------------------------------------------------------------------
    |
    */
    'password_validation_rule' => [
        'nullable',
        'confirmed',
        \Illuminate\Validation\Rules\Password::min(5),
    ],

    /*
    |--------------------------------------------------------------------------
    | Вариант валидации пароля, который соответствует требованиям ФСТЭК
    |--------------------------------------------------------------------------
    |
    */
//    'password' => [
//        'nullable',
//        'confirmed',
//        'max:150',
//        new \Lagoon\Sand\app\Rules\PasswordSpecialSymbolsRule(),
//        \Illuminate\Validation\Rules\Password::min(8)
//            ->letters()
//            ->numbers()
//            ->mixedCase(),
//        new \Lagoon\Sand\app\Rules\PasswordNotTheSameExtRule(htmlspecialchars(stripslashes(trim((string)($_REQUEST['email'] ?? null))))),
//    ],



    /*
    |--------------------------------------------------------------------------
    | Настройки профиля пользователя
    |--------------------------------------------------------------------------
    |
    */

    'profile_data' => [
        [
            "type" => 'text',
            "params" => ['name' => 'name', 'label' => 'Имя', 'width' => 6],
            "validation" => ['required'],
        ],
        [
            "type" => 'email',
            "params" => ['name' => 'email', 'label' => 'Email', 'width' => 6],
            "validation" => [
                'required',
                'email', \Illuminate\Validation\Rule::unique('users')
                    ->ignore( htmlspecialchars(stripslashes(trim((string)($_REQUEST['id'] ?? null)))) )
            ],
        ],

        [
            "type" => 'text',
            "params" => ['name' => 'position', 'label' => 'Должность', 'width' => 12],
            "validation" => ['nullable', 'max:255'],
        ],

        [
            "type" => 'text',
            "params" => ['name' => 'phone', 'label' => 'Телефон', 'width' => 6],
            "validation" => ['nullable', 'max:50'],
        ],

        [
            "type" => 'date',
            "params" => ['name' => 'birthdate', 'label' => 'Дата рождения', 'width' => 6],
            "validation" => ['nullable', 'date'],
        ],
        // Также можно добавить вот эти:
        //        [
        //            "type" => 'text',
        //            "params" => ['name' => 'telegram_login', 'label' => 'Логин Telegram', 'width' => 12]
        //        ],
        //        [
        //            "type" => 'text',
        //            "params" => ['name' => 'telegram_id', 'label' => 'TelegramID', 'width' => 12]
        //        ],
        //        [
        //            "type" => 'date',
        //            "params" => ['name' => 'birthdate', 'label' => 'Дата рождения', 'width' => 12]
        //        ],
    ],


    /*
    |--------------------------------------------------------------------------
    | Роли пользователя, которые назначаются новому пользователю по-умолчанию
    |--------------------------------------------------------------------------
    |
    */
    'user_default_roles' => [],

    /*
    |--------------------------------------------------------------------------
    | Настройки для CRUD раздела с пользователями
    |--------------------------------------------------------------------------
    |
    */
    'user_controller' => [
        'export_enabled' => true,
        'columns' => [
            ['name' => 'id', 'label' => '#', 'type' => 'text'],
            ['name' => 'name', 'label' => 'Имя', 'type' => 'text'],
            ['name' => 'email', 'label' => 'Email', 'type' => 'text'],
            ['name' => 'sessions', 'label' => 'Сессии', 'type' => 'view', 'view' => 'reef::columns.sessions'],
        ],
        'fields' => [
            ['name' => 'name', 'label' => 'Имя', 'type' => 'text', 'wrapper' => ['class' => 'form-group col-md-6']],
            ['name' => 'email', 'label' => 'Email', 'type' => 'text', 'wrapper' => ['class' => 'form-group col-md-6']],
            ['name' => 'password', 'label' => 'Пароль', 'type' => 'password', 'wrapper' => ['class' => 'form-group col-md-6']],
            ['name' => 'password_confirmation', 'label' => 'Подтверждение пароля', 'type' => 'password', 'wrapper' => ['class' => 'form-group col-md-6']],
            [
                'name' => 'max_session_count',
                'label' => 'Максимальное количество сессий',
                'type' => 'number',
                'attributes' => [
                    'step' => 1,
                    'min' => 1,
                ],
                'wrapper' => ['class' => 'form-group col-md-3']
            ]
        ],
        'attributes' => [
            'name' => 'Имя',
            'email' => 'Email',
            'password' => 'Пароль',
            'password_confirmation' => 'Подтверждение пароля',
            'max_session_count' => 'Максимальное количество сессий'
        ],
        'rules' => [
            'name' => ['required', 'max:255'],
            'email' => ['required', 'email', 'max:255', \Illuminate\Validation\Rule::unique('users')->ignore( htmlspecialchars(stripslashes(trim((string)($_REQUEST['id'] ?? null)))) )],
            'max_session_count' => ['nullable', 'integer', 'min:1'],
            // Правила валидации пароля задаются в lagoon.reef.password_validation_rule (в документе выше)
        ]
    ],

    /*
    |--------------------------------------------------------------------------
    | Настройка маршрутов по-умолчанию для контроллеров
    |--------------------------------------------------------------------------
    |
    */

    'routes'  => [
        'users' => '/system/users',
        'roles' => '/system/roles',
        'sessions' => '/system/sessions',

        'profile' => '/my-profile',

        'data_action_logs' => '/system/data-action-logs',
        'user_action_logs' => '/system/user-action-logs',
    ],

    /*
    |--------------------------------------------------------------------------
    | Настройки моделей
    |--------------------------------------------------------------------------
    |
    */
    'models' => [
        'users' => \App\Models\User::class,
        'roles' => \Lagoon\Reef\app\Models\Role::class,
        'sessions' => \Lagoon\Reef\app\Models\Session::class,

        'data_action_logs' => \Lagoon\Reef\app\Models\DataActionLog::class,
        'user_action_logs' => \Lagoon\Reef\app\Models\UserActionLog::class,
    ],

];



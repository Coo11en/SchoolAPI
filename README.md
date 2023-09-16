# SchoolAPI
Сайт Филипповской школы

В первую очередь, необходимо сгенерировать docker контейнер:
```bash
docker compose build
```

Запускаем контейнер:
```bash
docker-compose up -d
```

Переходим в консоль контейнера
```bash
docker exec -it schoolapi-php-fpm-1 /bin/bash
```

После скачивания необходимо установить все зависимости командами:
```bash
npm install
composer install
composer update
```

Установить базу данных MYSQL

Создать базу данных

создать в корне проекта файл .env и скопировать в него все из .env.example

в файле .env в настройках баззы данных прописать имя базы данных которое присвоили при создании базы данных, логин и пароль если добавляли, FRONTEND_URL

Сгенерировать ключ:
```bash
php artisan key:generate
```
Сделать линк на storage:
```bash
php artisan storage:link
```
Запустить миграции:
```bash
php artisan migrate
```

На проде закэшировать:
```bash
php artisan config:cache
php artisan event:cache
php artisan route:cache
php artisan view:cache
```
# API
### Получить список новостей
```http request
GET /api/V0/news
```
### Ответ
```
{
    "data": [
        {
            "id": 1,
            "title": "accusantium",
            "description": "Reprehenderit qui ea aut aut. Iure dolores dolor omnis praesentium est. Eum at qui explicabo vel.",
            "created_at": "2023-09-15T10:48:48.000000Z",
            "album": {
                "id": 1,
                "name": "Album 1",
                "nameEng": "iste",
                "mainImage": null,
                "images": [
                    "https://via.placeholder.com/640x480.png/00dd00?text=laudantium",
                    "https://via.placeholder.com/640x480.png/00ee99?text=eveniet",
                    "https://via.placeholder.com/640x480.png/004455?text=est",
                    "https://via.placeholder.com/640x480.png/00ee44?text=dolor",
                    "https://via.placeholder.com/640x480.png/0022ff?text=numquam",
                    "https://via.placeholder.com/640x480.png/00aa33?text=delectus",
                    "https://via.placeholder.com/640x480.png/00bbaa?text=quisquam",
                    "https://via.placeholder.com/640x480.png/0033ff?text=voluptatibus",
                    "https://via.placeholder.com/640x480.png/0022cc?text=adipisci",
                    "https://via.placeholder.com/640x480.png/008855?text=vitae"
                ]
            }
        },
        {
            "id": 2,
            "title": "aliquam",
            "description": "Eum enim illo eveniet quo. Id non non qui itaque fugit impedit aliquid.",
            "created_at": "2023-09-15T10:48:48.000000Z",
            "album": {
                "id": 1,
                "name": "Album 1",
                "nameEng": "iste",
                "mainImage": null,
                "images": [
                    "https://via.placeholder.com/640x480.png/00dd00?text=laudantium",
                    "https://via.placeholder.com/640x480.png/00ee99?text=eveniet",
                    "https://via.placeholder.com/640x480.png/004455?text=est",
                    "https://via.placeholder.com/640x480.png/00ee44?text=dolor",
                    "https://via.placeholder.com/640x480.png/0022ff?text=numquam",
                    "https://via.placeholder.com/640x480.png/00aa33?text=delectus",
                    "https://via.placeholder.com/640x480.png/00bbaa?text=quisquam",
                    "https://via.placeholder.com/640x480.png/0033ff?text=voluptatibus",
                    "https://via.placeholder.com/640x480.png/0022cc?text=adipisci",
                    "https://via.placeholder.com/640x480.png/008855?text=vitae"
                ]
            }
        },
        {
            "id": 3,
            "title": "minus",
            "description": "Voluptates perspiciatis est voluptate libero. Quasi sit quam ratione possimus.",
            "created_at": "2023-09-15T10:48:48.000000Z",
            "album": {
                "id": 2,
                "name": "Album 2",
                "nameEng": "dolorem",
                "mainImage": "https://via.placeholder.com/640x480.png/002288?text=suscipit",
                "images": [
                    "https://via.placeholder.com/640x480.png/00bbbb?text=veritatis",
                    "https://via.placeholder.com/640x480.png/0000ee?text=aspernatur",
                    "https://via.placeholder.com/640x480.png/0044ee?text=quas",
                    "https://via.placeholder.com/640x480.png/0099ee?text=culpa",
                    "https://via.placeholder.com/640x480.png/002288?text=suscipit",
                    "https://via.placeholder.com/640x480.png/00dddd?text=et",
                    "https://via.placeholder.com/640x480.png/00bbcc?text=molestiae",
                    "https://via.placeholder.com/640x480.png/0022dd?text=rem",
                    "https://via.placeholder.com/640x480.png/00dd11?text=fugiat",
                    "https://via.placeholder.com/640x480.png/00ee00?text=nam"
                ]
            }
        },
        {
            "id": 4,
            "title": "ducimus",
            "description": "Temporibus dolores quis veritatis excepturi possimus qui. Rem aut neque eum modi adipisci.",
            "created_at": "2023-09-15T10:48:48.000000Z",
            "album": {
                "id": 1,
                "name": "Album 1",
                "nameEng": "iste",
                "mainImage": null,
                "images": [
                    "https://via.placeholder.com/640x480.png/00dd00?text=laudantium",
                    "https://via.placeholder.com/640x480.png/00ee99?text=eveniet",
                    "https://via.placeholder.com/640x480.png/004455?text=est",
                    "https://via.placeholder.com/640x480.png/00ee44?text=dolor",
                    "https://via.placeholder.com/640x480.png/0022ff?text=numquam",
                    "https://via.placeholder.com/640x480.png/00aa33?text=delectus",
                    "https://via.placeholder.com/640x480.png/00bbaa?text=quisquam",
                    "https://via.placeholder.com/640x480.png/0033ff?text=voluptatibus",
                    "https://via.placeholder.com/640x480.png/0022cc?text=adipisci",
                    "https://via.placeholder.com/640x480.png/008855?text=vitae"
                ]
            }
        },
        {
            "id": 5,
            "title": "voluptatem",
            "description": "Consequatur porro porro repudiandae doloribus. Qui labore voluptates quam.",
            "created_at": "2023-09-15T10:48:48.000000Z",
            "album": {
                "id": 1,
                "name": "Album 1",
                "nameEng": "iste",
                "mainImage": null,
                "images": [
                    "https://via.placeholder.com/640x480.png/00dd00?text=laudantium",
                    "https://via.placeholder.com/640x480.png/00ee99?text=eveniet",
                    "https://via.placeholder.com/640x480.png/004455?text=est",
                    "https://via.placeholder.com/640x480.png/00ee44?text=dolor",
                    "https://via.placeholder.com/640x480.png/0022ff?text=numquam",
                    "https://via.placeholder.com/640x480.png/00aa33?text=delectus",
                    "https://via.placeholder.com/640x480.png/00bbaa?text=quisquam",
                    "https://via.placeholder.com/640x480.png/0033ff?text=voluptatibus",
                    "https://via.placeholder.com/640x480.png/0022cc?text=adipisci",
                    "https://via.placeholder.com/640x480.png/008855?text=vitae"
                ]
            }
        }
    ]
}
```
### Получить конкретную новость
```http request
GET /api/V0/news/{id_news}
```
### Ответ
```
{
    "data": {
        "id": 3,
        "title": "minus",
        "description": "Voluptates perspiciatis est voluptate libero. Quasi sit quam ratione possimus.",
        "created_at": "2023-09-15T10:48:48.000000Z",
        "album": {
            "id": 2,
            "name": "Album 2",
            "nameEng": "dolorem",
            "mainImage": "https://via.placeholder.com/640x480.png/002288?text=suscipit",
            "images": [
                "https://via.placeholder.com/640x480.png/00bbbb?text=veritatis",
                "https://via.placeholder.com/640x480.png/0000ee?text=aspernatur",
                "https://via.placeholder.com/640x480.png/0044ee?text=quas",
                "https://via.placeholder.com/640x480.png/0099ee?text=culpa",
                "https://via.placeholder.com/640x480.png/002288?text=suscipit",
                "https://via.placeholder.com/640x480.png/00dddd?text=et",
                "https://via.placeholder.com/640x480.png/00bbcc?text=molestiae",
                "https://via.placeholder.com/640x480.png/0022dd?text=rem",
                "https://via.placeholder.com/640x480.png/00dd11?text=fugiat",
                "https://via.placeholder.com/640x480.png/00ee00?text=nam"
            ]
        }
    }
}
```
### Получить расписания для всех классов
```http request
GET /api/V0/class_schedules
```
### Ответ
```
[
    {
        "classId": 1,
        "className": "1a",
        "days": [
            {
                "dayName": "Понедельник",
                "lessons": [
                    "Основы безопасности жизнедеятельности",
                    "Английский язык",
                    "Физическая культура",
                    "Химия"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "Физика",
                    "Литературное чтение",
                    "Химия",
                    "Изобразительное искусство"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "Английский язык",
                    "История России. Всеобщая история",
                    "Физическая культура",
                    "Основы религиозных культур и светской этики"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "Немецкий язык",
                    "Разговоры о важном",
                    "Физическая культура",
                    "Технология"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "Химия",
                    "Английский язык",
                    "Литературное чтение",
                    "Русский язык"
                ]
            }
        ]
    },
    {
        "classId": 2,
        "className": "2a",
        "days": [
            {
                "dayName": "Понедельник",
                "lessons": [
                    "Обществознание",
                    "Немецкий язык",
                    "Литература",
                    "Химия"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "Основы духуовно-нравственных культур народов России",
                    "История России. Всеобщая история",
                    "Основы безопасности жизнедеятельности",
                    "Технология"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "История России. Всеобщая история",
                    "Английский язык",
                    "Разговоры о важном",
                    "Физическая культура"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "Обществознание",
                    "Обществознание",
                    "История России. Всеобщая история",
                    "Лингвистический практикум по иностранному языку"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "Английский язык",
                    "Русский язык",
                    "Лингвистический практикум по иностранному языку",
                    "Математика"
                ]
            }
        ]
    }
]
```
### Получить расписание для выбранного класса
```http request
GET /api/V0/class_schedules/{id_class}
```
### Ответ
```
[
    {
        "classId": 2,
        "className": "2a",
        "days": [
            {
                "dayName": "Понедельник",
                "lessons": [
                    "Обществознание",
                    "Немецкий язык",
                    "Литература",
                    "Химия"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "Основы духуовно-нравственных культур народов России",
                    "История России. Всеобщая история",
                    "Основы безопасности жизнедеятельности",
                    "Технология"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "История России. Всеобщая история",
                    "Английский язык",
                    "Разговоры о важном",
                    "Физическая культура"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "Обществознание",
                    "Обществознание",
                    "История России. Всеобщая история",
                    "Лингвистический практикум по иностранному языку"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "Английский язык",
                    "Русский язык",
                    "Лингвистический практикум по иностранному языку",
                    "Математика"
                ]
            }
        ]
    }
]
```
### Получить альбомы для фотогалереи
```http request
GET /api/V0/albums
```
### Ответ
```
{
    "data": [
        {
            "id": 1,
            "name": "Album 1",
            "nameEng": "iste",
            "mainImage": null,
            "images": [
                "https://via.placeholder.com/640x480.png/00dd00?text=laudantium",
                "https://via.placeholder.com/640x480.png/00ee99?text=eveniet",
                "https://via.placeholder.com/640x480.png/004455?text=est",
                "https://via.placeholder.com/640x480.png/00ee44?text=dolor",
                "https://via.placeholder.com/640x480.png/0022ff?text=numquam",
                "https://via.placeholder.com/640x480.png/00aa33?text=delectus",
                "https://via.placeholder.com/640x480.png/00bbaa?text=quisquam",
                "https://via.placeholder.com/640x480.png/0033ff?text=voluptatibus",
                "https://via.placeholder.com/640x480.png/0022cc?text=adipisci",
                "https://via.placeholder.com/640x480.png/008855?text=vitae"
            ]
        },
        {
            "id": 2,
            "name": "Album 2",
            "nameEng": "dolorem",
            "mainImage": "https://via.placeholder.com/640x480.png/002288?text=suscipit",
            "images": [
                "https://via.placeholder.com/640x480.png/00bbbb?text=veritatis",
                "https://via.placeholder.com/640x480.png/0000ee?text=aspernatur",
                "https://via.placeholder.com/640x480.png/0044ee?text=quas",
                "https://via.placeholder.com/640x480.png/0099ee?text=culpa",
                "https://via.placeholder.com/640x480.png/002288?text=suscipit",
                "https://via.placeholder.com/640x480.png/00dddd?text=et",
                "https://via.placeholder.com/640x480.png/00bbcc?text=molestiae",
                "https://via.placeholder.com/640x480.png/0022dd?text=rem",
                "https://via.placeholder.com/640x480.png/00dd11?text=fugiat",
                "https://via.placeholder.com/640x480.png/00ee00?text=nam"
            ]
        }
    ]
}
```
### Получить конкретный альбом
```http request
GET /api/V0/albums/{id_album}
```
### Ответ
```
{
    "data": {
        "id": 2,
        "name": "Album 2",
        "nameEng": "dolorem",
        "mainImage": "https://via.placeholder.com/640x480.png/002288?text=suscipit",
        "images": [
            "https://via.placeholder.com/640x480.png/00bbbb?text=veritatis",
            "https://via.placeholder.com/640x480.png/0000ee?text=aspernatur",
            "https://via.placeholder.com/640x480.png/0044ee?text=quas",
            "https://via.placeholder.com/640x480.png/0099ee?text=culpa",
            "https://via.placeholder.com/640x480.png/002288?text=suscipit",
            "https://via.placeholder.com/640x480.png/00dddd?text=et",
            "https://via.placeholder.com/640x480.png/00bbcc?text=molestiae",
            "https://via.placeholder.com/640x480.png/0022dd?text=rem",
            "https://via.placeholder.com/640x480.png/00dd11?text=fugiat",
            "https://via.placeholder.com/640x480.png/00ee00?text=nam"
        ]
    }
}
```
### Получить расписание звонков
```http request
GET /api/V0/callSchedules
```
### Ответ
```
{
    "callSchedules": [
        {
            "number": 1,
            "start": "08:30",
            "end": "09:15"
        },
        {
            "number": 2,
            "start": "09:30",
            "end": "10:15"
        },
        {
            "number": 3,
            "start": "10:30",
            "end": "11:15"
        },
        {
            "number": 4,
            "start": "11:30",
            "end": "12:15"
        },
        {
            "number": 5,
            "start": "13:00",
            "end": "13:45"
        },
        {
            "number": 6,
            "start": "14:00",
            "end": "14:45"
        },
        {
            "number": 7,
            "start": "15:00",
            "end": "15:45"
        },
        {
            "number": 8,
            "start": "16:00",
            "end": "16:45"
        }
    ]
}
```

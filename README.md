# SchoolAPI
<h1 align="center"> Сайт Филипповской школы</h1>

<h2 align="center"> Кто использует Docker!!!!</h2>

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

<h2 align="center"> Далее касается Всех кто обходится без Docker и использует Docker!!</h2>

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

в файле .env прописать для баззы данных MySQL: 
```bash
DB_USERNAME=(имя пользователя)
DB_PASSWORD=(пароль пользователя)
```
если меняли от стандартного то 
```bash
DB_PORT=(порт для БД, стандартный "3306")
DB_HOST=(адрес хоста, стандартный "localhost")
```
Добавить из файла .env.example строку
```bash
FRONTEND_URL=http://localhost:3000
```
где прописывается адрес на котором запускается проект.

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
GET /api/news
```
### Ответ
```
{
    "data": [
        {
            "id": 1,
            "title": "Новость 1",
            "author": "Алексей",
            "image": "https://via.placeholder.com/640x480.png/000011?text=labore",
            "description": "Illo ducimus corrupti asperiores totam unde quidem laudantium. Aut similique eius et ex dolorem.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 2,
            "title": "News#1",
            "author": "sherman60",
            "image": "https://via.placeholder.com/640x480.png/0055bb?text=nobis",
            "description": "Sit error consequatur laudantium minus magnam sunt. Ipsa adipisci harum rerum nulla laborum.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 3,
            "title": "News#2",
            "author": "ari01",
            "image": "https://via.placeholder.com/640x480.png/00ee11?text=magni",
            "description": "Quo quas et beatae quaerat est in dolores id. Ut a temporibus ut. Quae eum ea quia suscipit beatae.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 4,
            "title": "News#3",
            "author": "wintheiser.corrine",
            "image": "https://via.placeholder.com/640x480.png/0055ee?text=optio",
            "description": "Ut quod voluptatem fugit dolorem deserunt. Et numquam dolore repellendus ullam magnam nesciunt.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 5,
            "title": "News#4",
            "author": "oconnell.erick",
            "image": "https://via.placeholder.com/640x480.png/004400?text=voluptatum",
            "description": "Ut quos illum et error beatae aut. Necessitatibus et quas consequatur quidem.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 6,
            "title": "News#5",
            "author": "qdickinson",
            "image": "https://via.placeholder.com/640x480.png/000033?text=in",
            "description": "Atque incidunt veniam est ut nostrum voluptatem debitis. Tempore ut non quis. Cumque modi aut aut.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 7,
            "title": "News#6",
            "author": "koepp.brody",
            "image": "https://via.placeholder.com/640x480.png/00ccaa?text=et",
            "description": "Ullam ea in ad dolores aliquam sunt culpa. Quam quaerat quidem saepe fugiat eos blanditiis.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        },
        {
            "id": 8,
            "title": "News#7",
            "author": "cwunsch",
            "image": "https://via.placeholder.com/640x480.png/004433?text=et",
            "description": "Veniam rerum temporibus modi voluptatem. Sapiente vel voluptas molestiae ipsum recusandae.",
            "created_at": "2023-09-01T15:58:01.000000Z"
        }
    ]
}
```
### Получить конкретную новость
```http request
GET /api/news/{id_news}
```
### Ответ
```
{
    "data": {
        "id": 3,
        "title": "News#2",
        "author": "ari01",
        "image": "https://via.placeholder.com/640x480.png/00ee11?text=magni",
        "description": "Quo quas et beatae quaerat est in dolores id. Ut a temporibus ut. Quae eum ea quia suscipit beatae.",
        "created_at": "2023-09-01T15:58:01.000000Z"
    }
}
```
### Получить расписания для звонков
```http request
GET /api/callSchedules
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
### Получить расписания для всех классов
```http request
GET /api/class_schedules
```
### Ответ
```
{
    "data": [
        {
            "classId": 1,
            "className": "1a",
            "days": [
                {
                    "dayName": "Понедельник",
                    "lessons": [
                        "repudiandae",
                        "id",
                        "enim",
                        "enim",
                        "tempore"
                    ]
                },
                {
                    "dayName": "Вторник",
                    "lessons": [
                        "quis",
                        "possimus",
                        "accusantium",
                        "ratione",
                        "praesentium"
                    ]
                },
                {
                    "dayName": "Среда",
                    "lessons": [
                        "asperiores",
                        "odit",
                        "quod",
                        "aut",
                        "fugiat"
                    ]
                },
                {
                    "dayName": "Четверг",
                    "lessons": [
                        "et",
                        "ullam",
                        "debitis",
                        "illo",
                        "officia"
                    ]
                },
                {
                    "dayName": "Пятница",
                    "lessons": [
                        "nostrum",
                        "necessitatibus",
                        "eos",
                        "placeat",
                        "voluptas"
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
                        "non",
                        "ut",
                        "doloremque",
                        "et",
                        "ipsa"
                    ]
                },
                {
                    "dayName": "Вторник",
                    "lessons": [
                        "asperiores",
                        "odio",
                        "mollitia",
                        "harum",
                        "aut"
                    ]
                },
                {
                    "dayName": "Среда",
                    "lessons": [
                        "amet",
                        "omnis",
                        "corporis",
                        "et",
                        "in"
                    ]
                },
                {
                    "dayName": "Четверг",
                    "lessons": [
                        "quam",
                        "error",
                        "natus",
                        "eum",
                        "maxime"
                    ]
                },
                {
                    "dayName": "Пятница",
                    "lessons": [
                        "ut",
                        "numquam",
                        "et",
                        "culpa",
                        "blanditiis"
                    ]
                }
            ]
        }
    ]
}
```
### Получить расписание для выбранного класса
```http request
GET /api/class_schedules/{id_class}
```
### Ответ
```
{
    "data": {
        "classId": 2,
        "className": "2a",
        "days": [
            {
                "dayName": "Понедельник",
                "lessons": [
                    "non",
                    "ut",
                    "doloremque",
                    "et",
                    "ipsa"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "asperiores",
                    "odio",
                    "mollitia",
                    "harum",
                    "aut"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "amet",
                    "omnis",
                    "corporis",
                    "et",
                    "in"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "quam",
                    "error",
                    "natus",
                    "eum",
                    "maxime"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "ut",
                    "numquam",
                    "et",
                    "culpa",
                    "blanditiis"
                ]
            }
        ]
    }
}
```
### Получить альбомы для фотогалереи
```http request
GET /api/albums
```
### Ответ
```
{
    "data": [
        {
            "name": "Sed minima et voluptas enim ab ipsa ut.",
            "nameEng": "neque",
            "mainImage": "http://www.bergnaum.com/",
            "images": [
                "https://armstrong.com/vero-sint-magni-quod-dicta-ea-consequatur.html",
                "http://www.gleason.com/",
                "http://www.dicki.com/"
            ]
        },
        {
            "name": "Aut neque rerum facilis.",
            "nameEng": "perspiciatis",
            "mainImage": "http://cremin.net/quaerat-cum-assumenda-veniam-autem-consequuntur-vel.html",
            "images": [
                "http://haley.com/rerum-sit-optio-non-dolorem-neque-ad.html",
                "http://www.cole.com/repudiandae-quisquam-quaerat-facilis-sit-et.html",
                "http://www.tromp.biz/labore-error-eveniet-debitis-illum-distinctio-libero-sequi.html"
            ]
        },
        {
            "name": "Est provident sed deserunt id deserunt.",
            "nameEng": "qui",
            "mainImage": "https://wolf.info/dolor-ut-eum-sed-dolorem-velit-ex-perferendis.html",
            "images": [
                "https://osinski.com/iure-quam-consequatur-facere-error-fugiat.html",
                "http://hills.net/reiciendis-veritatis-quia-dignissimos.html",
                "http://kiehn.org/numquam-non-quas-necessitatibus-repudiandae-nostrum"
            ]
        }
    ]
}
```
### Получить конкретный альбом
```http request
GET /api/albums/{id_album}
```
### Ответ
```
{
    "data": {
        "name": "Aut neque rerum facilis.",
        "nameEng": "perspiciatis",
        "mainImage": "http://cremin.net/quaerat-cum-assumenda-veniam-autem-consequuntur-vel.html",
        "images": [
            "http://haley.com/rerum-sit-optio-non-dolorem-neque-ad.html",
            "http://www.cole.com/repudiandae-quisquam-quaerat-facilis-sit-et.html",
            "http://www.tromp.biz/labore-error-eveniet-debitis-illum-distinctio-libero-sequi.html"
        ]
    }
}
```

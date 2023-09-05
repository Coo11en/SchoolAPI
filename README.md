# SchoolAPI
Сайт Филипповской школы

После скачивания необходимо установить все зависимости командами:
npm install
composer install
composer update

Установить базу данных MYSQL

Создать базу данных 

создать в корне проекта файл .env и скопировать в него все из .env.example

в файле .env в настройках баззы данных прописать имя базы данных которое присвоили при создании базы данных, логин и пароль если добавляли

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

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

<h2 align="center">Для корректного применения миграций для изменений БД можно использовать: </h2>

```bash
 php artisan migrate:fresh --seed
```

Команда очищает все таблицы, применяет миграции, применяет Seed

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
            "title": "qui",
            "description": "Iste est quis quaerat. Eius nobis quam voluptates dicta veritatis quis enim amet.",
            "created_at": "2023-09-19T16:11:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        },
        {
            "id": 2,
            "title": "cupiditate",
            "description": "Assumenda consequatur consectetur itaque porro aut. Beatae fugiat voluptatem aut sint.",
            "created_at": "2023-09-19T16:12:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        },
        {
            "id": 3,
            "title": "non",
            "description": "Qui sed in modi. Eum et dicta tempora dolorem quae non. Quia ut consequatur autem ut ipsam.",
            "created_at": "2023-09-19T16:13:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        },
        {
            "id": 4,
            "title": "rem",
            "description": "Earum cum aut enim eos necessitatibus quas quis. Officia aut asperiores voluptatem corrupti.",
            "created_at": "2023-09-19T16:14:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        },
        {
            "id": 5,
            "title": "minima",
            "description": "Quos odit commodi aut et ut commodi ipsa. Qui provident illum alias architecto illum explicabo.",
            "created_at": "2023-09-19T16:15:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
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
    "id": 1,
    "title": "qui",
    "description": "Eos perspiciatis est voluptatum animi nulla. Dicta ab quia nulla iusto et.",
    "text": "Dolorum quia nemo aut. Ut magni veritatis velit qui et magni. Suscipit ea sapiente rem minus sint officiis perspiciatis. Eius quaerat suscipit qui cum. Unde ex explicabo sed architecto veritatis cum. Iste minus debitis est reprehenderit consequatur quasi natus. Beatae sapiente omnis error harum. Quia quae error ad eaque perspiciatis non et. Nemo exercitationem maxime nemo odio qui culpa. Facilis odit blanditiis et rerum. Eos ut et quis nemo. Et eos alias ex accusamus dignissimos. Inventore quo iusto possimus qui. Facilis quod quaerat architecto nulla vitae veritatis voluptas. Quasi laboriosam cumque reiciendis aut molestiae. Eius numquam velit ut aliquid. Eligendi quae et assumenda libero quo eum maiores. Est repellendus quisquam in rerum tenetur delectus molestiae. Sed culpa dolorem aliquid blanditiis. Alias vitae cumque illo. Quo aliquam qui sit consectetur eos qui. Nisi est possimus officiis accusantium quas eaque.",
    "created_at": "2023-09-21T19:03:02.000000Z",
    "mainImg": "https:\/\/via.placeholder.com\/640x480.png\/009988?text=ab",
    "images": [
      "https:\/\/via.placeholder.com\/640x480.png\/009988?text=ab",
      "https:\/\/via.placeholder.com\/640x480.png\/00dd88?text=dicta",
      "https:\/\/via.placeholder.com\/640x480.png\/00cc66?text=ut",
      "https:\/\/via.placeholder.com\/640x480.png\/004488?text=similique",
      "https:\/\/via.placeholder.com\/640x480.png\/001111?text=dolor",
      "https:\/\/via.placeholder.com\/640x480.png\/008899?text=vitae",
      "https:\/\/via.placeholder.com\/640x480.png\/00aadd?text=beatae",
      "https:\/\/via.placeholder.com\/640x480.png\/00ee00?text=voluptatem",
      "https:\/\/via.placeholder.com\/640x480.png\/004444?text=ut",
      "https:\/\/via.placeholder.com\/640x480.png\/0033ee?text=voluptatem"
    ],
    "video": "https:\/\/via.placeholder.com\/640x480.png\/0088ff?text=dolorum",
    "source": [
      {
        "url": "https:\/\/wisoky.com\/eligendi-rerum-aut-quo-sint-tempora-voluptatibus-eius.html",
        "text": "Quasi quo ea sunt minus."
      },
      {
        "url": "http:\/\/www.ernser.org\/in-iure-dicta-nobis-nihil-totam.html",
        "text": "Ut possimus hic voluptatum."
      }
    ]
  }
}
```
### Получить три последние новости
```http request
GET /api/V0/news?limit=3
```
### Ответ
```
{
    "data": [
        {
            "id": 5,
            "title": "minima",
            "description": "Quos odit commodi aut et ut commodi ipsa. Qui provident illum alias architecto illum explicabo.",
            "created_at": "2023-09-19T16:15:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        },
        {
            "id": 4,
            "title": "rem",
            "description": "Earum cum aut enim eos necessitatibus quas quis. Officia aut asperiores voluptatem corrupti.",
            "created_at": "2023-09-19T16:14:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        },
        {
            "id": 3,
            "title": "non",
            "description": "Qui sed in modi. Eum et dicta tempora dolorem quae non. Quia ut consequatur autem ut ipsam.",
            "created_at": "2023-09-19T16:13:41.000000Z",
            "mainImg": "https://via.placeholder.com/640x480.png/00aa44?text=eos"
        }
    ]
}
```
### Получить расписания для всех классов
```http request
GET /api/V0/class-schedules
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
                    "Технология",
                    "Английский язык",
                    "Русский язык",
                    "Русский язык"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "Физическая культура",
                    "Физическая культура",
                    "Осмысленное чтение",
                    "Химия"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "Физика",
                    "Физическая культура",
                    "Лингвистический практикум по иностранному языку",
                    "Физика"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "Основы духуовно-нравственных культур народов России",
                    "Основы духуовно-нравственных культур народов России",
                    "Английский язык",
                    "Литературное чтение"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "Изобразительное искусство",
                    "География",
                    "Лингвистический практикум по иностранному языку",
                    "Основы религиозных культур и светской этики"
                ]
            },
            {
                "dayName": "Суббота",
                "lessons": [
                    "Английский язык",
                    "История России. Всеобщая история",
                    "Физическая культура",
                    "История России. Всеобщая история"
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
                    "Лингвистический практикум по иностранному языку",
                    "География",
                    "Разговоры о важном"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "Основы духуовно-нравственных культур народов России",
                    "Основы безопасности жизнедеятельности",
                    "Физика",
                    "Обществознание"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "Физическая культура",
                    "Физика",
                    "Обществознание",
                    "Химия"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "География",
                    "Физическая культура",
                    "Немецкий язык",
                    "Лингвистический практикум по иностранному языку"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "Литература",
                    "Литература",
                    "Разговоры о важном",
                    "Немецкий язык"
                ]
            },
            {
                "dayName": "Суббота",
                "lessons": [
                    "Английский язык",
                    "Основы безопасности жизнедеятельности",
                    "Химия",
                    "Основы религиозных культур и светской этики"
                ]
            }
        ]
    }
]
```
### Получить расписание для выбранного класса
```http request
GET /api/V0/class-schedules/{id_class}
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
                    "Лингвистический практикум по иностранному языку",
                    "География",
                    "Разговоры о важном"
                ]
            },
            {
                "dayName": "Вторник",
                "lessons": [
                    "Основы духуовно-нравственных культур народов России",
                    "Основы безопасности жизнедеятельности",
                    "Физика",
                    "Обществознание"
                ]
            },
            {
                "dayName": "Среда",
                "lessons": [
                    "Физическая культура",
                    "Физика",
                    "Обществознание",
                    "Химия"
                ]
            },
            {
                "dayName": "Четверг",
                "lessons": [
                    "География",
                    "Физическая культура",
                    "Немецкий язык",
                    "Лингвистический практикум по иностранному языку"
                ]
            },
            {
                "dayName": "Пятница",
                "lessons": [
                    "Литература",
                    "Литература",
                    "Разговоры о важном",
                    "Немецкий язык"
                ]
            },
            {
                "dayName": "Суббота",
                "lessons": [
                    "Английский язык",
                    "Основы безопасности жизнедеятельности",
                    "Химия",
                    "Основы религиозных культур и светской этики"
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
GET /api/V0/albums/{nameEng}
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
GET /api/V0/call-schedules
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
### Получить оборудование по кабинетам
```http request
GET /api/V0/cabinets
```
### Ответ
```
{
    "data": [
        {
            "name": "Кабинет информатики",
            "description": "Non aut vel voluptas est occaecati. Eligendi esse non a magni quibusdam consequatur nesciunt. Ea qui ipsa quaerat eius et minima delectus.",
            "photos": [
                "https://via.placeholder.com/640x480.png/00ddcc?text=id",
                "https://via.placeholder.com/640x480.png/008822?text=consectetur",
                "https://via.placeholder.com/640x480.png/001199?text=autem",
                "https://via.placeholder.com/640x480.png/00ffff?text=velit"
            ]
        },
        {
            "name": "Кабинет химии",
            "description": "Non et voluptas mollitia consectetur temporibus fuga. Sed labore in id. Commodi numquam quidem eligendi.",
            "photos": [
                "https://via.placeholder.com/640x480.png/00aadd?text=rerum",
                "https://via.placeholder.com/640x480.png/0066dd?text=sunt",
                "https://via.placeholder.com/640x480.png/00aa55?text=molestias",
                "https://via.placeholder.com/640x480.png/006699?text=voluptas"
            ]
        },
        {
            "name": "Кабинет физики",
            "description": "Libero quaerat ad non voluptatem animi qui. Consequatur et odit quasi et. Ex dolorum accusamus et nostrum sapiente.",
            "photos": [
                "https://via.placeholder.com/640x480.png/00bb22?text=porro",
                "https://via.placeholder.com/640x480.png/006644?text=voluptas",
                "https://via.placeholder.com/640x480.png/001188?text=quia",
                "https://via.placeholder.com/640x480.png/004433?text=placeat"
            ]
        }
    ]
}
```

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

### Получить текущее меню в столовой
```http request
GET /api/V0/menu
```
### Ответ
```
{
  "data": [
    {
      "id": 57,
      "menu_title": "Меню ежедневного горячего питания",
      "name_menu": "Завтрак",
      "price": "191",
      "date": "2023-09-29 00:20:19",
      "menu": [
        {
          "name_dish": "Et odit adipisci sit id.",
          "dish_output": "284 гр."
        },
        {
          "name_dish": "Et nisi non mollitia id.",
          "dish_output": "147 гр."
        },
        {
          "name_dish": "Ex mollitia ut aliquam.",
          "dish_output": "295 гр."
        },
        {
          "name_dish": "Laborum non fugit qui.",
          "dish_output": "131 гр."
        }
      ]
    },
    {
      "id": 58,
      "menu_title": "Меню ежедневного горячего питания",
      "name_menu": "Обед",
      "price": "82",
      "date": "2023-09-29 00:20:20",
      "menu": [
        {
          "name_dish": "Amet non dolorum cum.",
          "dish_output": "242 гр."
        },
        {
          "name_dish": "Ut fuga excepturi eos.",
          "dish_output": "64 гр."
        },
        {
          "name_dish": "Ea qui aut harum.",
          "dish_output": "201 гр."
        },
        {
          "name_dish": "Ad sunt accusamus omnis.",
          "dish_output": "167 гр."
        }
      ]
    }
  ]
}
```

### Получить всех учителей
```http request
GET /api/V0/teachers
```
### Ответ
```
{
  "data": [
    {
      "name": "Уварова Кирилл Quae molestiae.",
      "post": [
        "Ut iusto illo et labore.",
        "Qui fugit cumque itaque."
      ],
      "speciality": "Voluptas non nulla.",
      "education": "Consequatur nesciunt ipsam ratione.",
      "totalExperience": 24,
      "generalTeachingExperience": 27,
      "tel": "(812) 331-27-82",
      "email": "vlad68@example.org",
      "photo": "http:\/\/филипповская-школа.рф\/wp-content\/uploads\/2023\/05\/1-1.jpg",
      "qualification": "Enim eum molestiae at cum.",
      "isAdministration": false
    },
    {
      "name": "Зыков Матвей Molestiae quasi.",
      "post": [
        "Quis possimus qui eum.",
        "Vel ea molestias molestiae."
      ],
      "speciality": "Eum et cupiditate.",
      "education": "Est natus fugiat in quia et ratione.",
      "totalExperience": 18,
      "generalTeachingExperience": 54,
      "tel": "(35222) 64-1336",
      "email": "egorov.svetlana@example.org",
      "photo": "http:\/\/филипповская-школа.рф\/wp-content\/uploads\/2023\/05\/1-1.jpg",
      "qualification": "Quia libero dolorem itaque.",
      "isAdministration": true
    },
  ]
}
```

### Получить топ вопросов по питанию
```http request
GET /api/V0/questions
```
### Ответ
```
{
  "data": [
    {
      "id": 1,
      "question": "Tempore porro et voluptas rem necessitatibus. Nulla et provident dolore est quo id. Inventore occaecati ipsa vel nesciunt numquam enim id. Sit vitae quidem repudiandae in adipisci sed. Consequatur necessitatibus minus porro quisquam.",
      "answer": "Libero qui accusamus nisi. Ut officiis est dolorem nulla odio autem qui excepturi. Amet sunt magni numquam. Iusto labore quasi ea aut incidunt. Est ad non ut delectus architecto est. Nobis et aspernatur nam aut deserunt aut et. Repellendus in itaque reiciendis. Aut aliquam officia tempore. Harum quia necessitatibus est nulla illo recusandae facilis culpa. Et ut consequatur ratione reiciendis quia odio. Dolorem dolor nobis consequatur eum. Voluptatem qui et modi accusantium. Nihil ut repudiandae perspiciatis unde qui rerum sit. Dignissimos velit quidem numquam non. Sint perspiciatis modi ipsum illum. Deserunt non doloremque autem vel nesciunt in reprehenderit. Delectus voluptas esse eos perspiciatis adipisci est facere. Adipisci delectus deserunt molestiae tenetur eum consequuntur minus. A sunt non minima delectus qui quam. Rerum totam voluptas commodi incidunt ducimus dolorum. Et quia earum eligendi excepturi non ab. Ut nesciunt laudantium impedit corporis. Ad neque nisi asperiores. Aliquid voluptas at qui eos. Minima alias est hic similique consequuntur qui et aut. Nulla illum hic ut odit provident cumque quae. Voluptas mollitia ad voluptatem laboriosam. Et odio laudantium tenetur dolor. Expedita enim repellendus porro sequi nostrum. Nesciunt veniam tenetur soluta dolorem. Sit soluta est quo molestiae natus molestiae omnis. Inventore cupiditate facere enim occaecati laborum. Magni labore assumenda tempore voluptate. Fugiat odit esse magnam ut sit sed. Ut perspiciatis eum qui vel maxime non voluptates quod. In nihil dicta atque. Inventore facere quisquam sed cumque nesciunt. Optio qui quam sint repellat itaque saepe quia qui. Voluptate quo veniam sit. Accusantium et corporis et libero debitis est. Ratione tempore ipsam architecto laudantium laudantium omnis voluptatibus aut. Eum nam quo aliquam minus suscipit. Quis cupiditate adipisci dolorem rerum. Asperiores eum et recusandae voluptates enim. Hic reprehenderit eum nemo sunt. Numquam ex quibusdam et molestiae soluta quae pariatur. Harum reiciendis et impedit necessitatibus vero quia enim voluptas. Quia eligendi amet impedit nam et in. Aliquam consequatur quod perferendis doloremque delectus. Aut possimus voluptatem illo illo et occaecati. Voluptatem accusamus laborum ipsam ex. Assumenda quia rerum enim porro illo qui occaecati sunt. Recusandae dolore vel dolor. Dicta tenetur magni in debitis temporibus. Id distinctio mollitia consequuntur molestias sit quae. Sed sed sunt ea eaque. Rem magni sint distinctio ut incidunt aspernatur voluptas. Iure quaerat quia et libero necessitatibus est labore inventore. Soluta tempora repudiandae magni delectus quas voluptatem quia. Nam id fugiat optio iure qui dolor. Soluta laudantium natus deserunt. Error repellendus autem aliquam eum. Non quia quidem autem. Quae assumenda qui rerum placeat voluptatum voluptas dolore."
    },
    {
      "id": 2,
      "question": "Aliquid nisi blanditiis omnis facere est. Consectetur quasi necessitatibus doloribus esse explicabo occaecati. At quo inventore quis qui maiores. Saepe voluptatem est et. Qui qui aliquam eaque dolores et voluptatem et. In voluptates quia quam animi ut facilis. Id est consequatur iure maiores culpa.",
      "answer": "Id odio exercitationem placeat est adipisci neque iste. Aut delectus adipisci repellat consequatur enim totam voluptatem soluta. Voluptatum enim maxime dolor dolores sed minima. Ab expedita cumque autem reiciendis mollitia reiciendis. Eveniet deserunt voluptates expedita ea eum ut. Autem rerum minus assumenda molestiae consequatur aliquid iusto. Quia est veritatis cupiditate. Ullam magnam ea unde distinctio. Et dicta et quo id quibusdam. Odio rerum dolore inventore voluptates earum. Ipsum vitae beatae beatae amet incidunt. Sint delectus aut culpa. Aut voluptas laborum sunt dolorem. Deserunt minus libero et ut porro. Dolorum pariatur asperiores hic delectus itaque. Hic perferendis quia aut neque quibusdam qui id. Omnis cum placeat amet labore. Architecto cumque et in distinctio autem. Et expedita est dolorem qui aut velit quis. Ut reiciendis et voluptates praesentium eos. Minus recusandae ea voluptatem est voluptatem nesciunt vitae aut. Earum enim et non nisi velit aut quo. Quia cupiditate officia laudantium suscipit. Quos qui minima aut porro sapiente. Cumque odio et eos voluptates sed labore. Voluptas natus quibusdam vel quas ullam laudantium aut consectetur. Ut voluptate eveniet est architecto odit sint fugit inventore. Qui voluptas sit at amet odio saepe. Ea eum odio totam quisquam et est. Exercitationem ut qui esse nihil in aut unde. Laudantium reprehenderit eius laborum corporis quis. Molestias non voluptatem earum odio officiis. Modi aperiam quisquam earum. Quaerat dicta aut minus blanditiis iste assumenda omnis. Nisi sit quam error nihil. Sint non in itaque deserunt eaque qui atque. Asperiores sed aperiam esse optio esse. Adipisci fuga dignissimos sit sapiente sunt iste deleniti. Labore consequatur minima in aliquam voluptate. Sit repellat exercitationem ut aut qui earum error. Quas dolore iusto laboriosam sit ex dignissimos. Eligendi veritatis dolores non adipisci quis dolore soluta et. Quisquam tempore quia sunt quam cupiditate. Rem suscipit itaque cum numquam. Voluptatem est ut est ullam aspernatur. Voluptate quos dolores illo. Sint quisquam quos laudantium dolores deleniti exercitationem. Quis doloribus et harum porro consequatur. Voluptas dolor consectetur consectetur qui enim quia quia. Doloremque omnis id atque ullam quasi sit et. Non quasi veritatis quod ut. Recusandae et quis sit iusto ea doloremque quo. Numquam occaecati sed cum deserunt perferendis adipisci. Quaerat perferendis eos aut dolores explicabo doloremque vel. Commodi corrupti maiores atque nisi id officia. Harum vel quo perspiciatis quis. Velit voluptate velit autem nihil qui. Accusamus aut et et vero sunt ut. Ipsam est cupiditate dolorem odit et sed maiores. Deserunt ea nostrum aut aliquid corporis et. Quia rerum ipsam in voluptas corporis quaerat fuga. Consectetur voluptas doloribus veniam laudantium et aut molestias."
    },
    {
      "id": 3,
      "question": "Temporibus mollitia quis asperiores illum. Numquam veritatis provident nisi. Ipsum odit aut reprehenderit temporibus. Quia corrupti voluptates totam et. Sit adipisci qui blanditiis nihil aut. Nemo nemo deserunt eveniet aliquid est.",
      "answer": "Libero beatae ad qui id et veritatis. Fuga a sit esse ut. Fugiat et saepe quisquam quia nihil ut exercitationem. Enim beatae quaerat eligendi voluptatem. Dolor mollitia aut sit est mollitia suscipit. Aspernatur sed maiores soluta sit qui placeat. Vel aut sint rerum nemo qui quia consequatur. Quod non dolorum eos qui. Dignissimos et dolor eaque minima dolores. Eos commodi repellendus doloribus optio. Voluptas temporibus et id amet est voluptatum. Sed officiis non et consequatur aut sed magni. Sunt provident eius sit aperiam hic. Qui provident est libero error nobis. Iure eveniet officiis sit ut ipsum aliquam quam. Commodi sit sit debitis quos autem labore illum. Libero nisi et nisi aut a maiores laudantium expedita. Molestias reiciendis eum est. Itaque corporis corrupti eos. Rerum sint itaque cupiditate sit blanditiis. Dolor dolores ratione reiciendis aut nisi. Quasi et quae praesentium sit et voluptates commodi. Dolores officiis fugit minima nihil. Nulla illum a veritatis officiis. Et est et error facere aliquid iusto. Laudantium quo voluptate explicabo laborum voluptates veritatis. Consequatur deserunt eaque nihil magni vel. Vel maiores sit adipisci culpa nihil. Quia veniam aperiam consequuntur saepe est sint quisquam sed. Iste deserunt non illum sit. Aliquid accusantium eos commodi rerum aut praesentium. Commodi et in voluptatum in qui. Dolor quas id nemo voluptate sit magnam aspernatur. Facilis quo dolorem alias quo. Architecto voluptates officiis officiis est molestias. Voluptas laudantium maxime qui natus. Voluptatem ut nostrum perferendis similique. Modi facere dignissimos enim amet harum iure. Ab eaque optio harum maxime. Quas ipsum eius in hic. Deserunt sed earum aliquid sed itaque velit explicabo magnam. Deserunt saepe rerum atque nam aut. Doloribus fuga est aut sint. Et voluptatem a quia eveniet in. Quia iste consequatur enim aliquam porro perferendis eligendi. Recusandae sint labore autem fuga non omnis fugiat. Praesentium voluptate qui non quidem quidem ex. Dolore quos qui deleniti in. Temporibus et voluptate ea harum sit perspiciatis dolorem. Ipsam sequi ut architecto omnis dicta nobis quis ex. Iure autem aspernatur cum in. Mollitia suscipit quod eum libero id reiciendis quia. Facere ut molestiae totam molestiae qui hic. Magni est qui et et expedita perferendis corporis magni. Laborum maxime ratione et illo ea eligendi. Quisquam odio nesciunt quia facilis repudiandae eos. Nisi ut maxime quis explicabo. Nam qui maxime et quas aut cumque qui. Adipisci non harum voluptatem. Vero esse optio alias. Cum maxime repellat esse pariatur debitis dolores facere. Rem est mollitia nesciunt rem rerum neque vel. Animi ea ratione omnis fugiat ab. Et sit perspiciatis et sed soluta sint hic dicta. Corporis aliquid ut fugiat aut est. Dolores vitae hic ad occaecati. Temporibus voluptates omnis qui incidunt nisi ullam. Veniam est officia similique ut vel aperiam. Natus pariatur tempora id dolor. Autem molestias sapiente voluptatem fugiat."
    },
    {
      "id": 4,
      "question": "A dolores optio ex libero. Dolores sint iusto veniam nemo ea. Ipsam sit ut accusantium eligendi minima. Beatae at quod sint rerum quasi rerum labore ex.",
      "answer": "Culpa dolores eos unde in. Rerum nam ad commodi et nesciunt iusto quisquam. Possimus et aut modi ex. Excepturi ut aut nulla repellat ipsam. Libero est deleniti nihil dolores quisquam. Voluptas qui voluptatem ut tempore omnis praesentium. Molestiae quisquam id et natus consequatur. Suscipit inventore alias aliquid nobis voluptatem in qui. Accusamus est sunt ut culpa. Corporis voluptatem illum est doloribus ipsa ea. Sint adipisci ipsa et accusantium eos rem. Quo in dolorem nulla sit dolorem. Est iste non excepturi quasi. Eos et sit in. Enim exercitationem porro pariatur expedita explicabo temporibus vitae eos. Delectus laudantium nulla provident earum ut facere molestiae. Possimus eligendi est sint cum tempora ea nulla. Aliquid ea omnis nulla aspernatur voluptatem sed rem. Vel non aperiam illum sint eius porro. Laboriosam autem et quibusdam et. Iste numquam amet voluptatibus libero cum. Esse in esse tenetur velit optio ab quia ipsa. Nihil velit blanditiis veritatis voluptas cum iste omnis voluptatem. Dicta eum libero qui. Laborum rerum modi placeat similique et voluptates. Voluptatem magni alias placeat repellat similique incidunt aut omnis. Voluptatem iste repellat quia minima non consequatur. Fugiat ipsa sunt molestiae nihil eum quod corporis. Eos voluptatibus error ipsa autem doloribus. Excepturi quia quidem omnis velit earum modi et et. Quos numquam iusto natus expedita in. Asperiores qui dolores temporibus sed praesentium delectus repudiandae dolor. Laboriosam magni at molestiae ut quis similique quia. Architecto quis ab voluptates adipisci. Est accusantium quisquam incidunt eum. Fugit fuga vel aut. Mollitia dolores sapiente est. Est fugiat cupiditate ut magnam est ut rerum. Assumenda delectus tenetur repudiandae iste provident eveniet ut. Odit saepe perspiciatis explicabo modi aut. Exercitationem iste quis animi qui eligendi. Doloremque fugit pariatur at animi. Quos illo tempora commodi omnis consequatur. Incidunt et eos dicta rerum corporis quas. Laboriosam accusamus esse at qui rem quia. Maiores culpa aut provident ut sit. Placeat fuga sequi quis inventore vero quas vel. Sed porro non enim et earum facilis eaque. Quam quod non corporis cum molestias. Ea itaque facere quaerat odio hic. Eos minus ut occaecati autem magnam. Velit quia eum quaerat vel corrupti consequuntur accusamus. Aut eveniet blanditiis molestiae non nihil perferendis labore eum. Similique omnis aut recusandae ratione delectus numquam quod. Voluptates non cum eius quo quaerat soluta labore. Ratione enim non voluptate nobis sit libero voluptas. Est illum sequi nemo iusto officia exercitationem sit. Tempora eligendi ratione consequuntur est dolor consequatur. Sunt eos deserunt esse facere deserunt in. Doloremque ut aut voluptatum. Ut soluta itaque molestiae quo itaque tenetur. Et architecto est exercitationem voluptate. Quisquam ea ea voluptatem ut animi. Excepturi veniam inventore odit quidem voluptatum. Laborum inventore quam quisquam eaque qui assumenda et."
    }
  ]
}
```

### Получить структуру основных подразделов для Раздела "Сведения об образовательном учреждении"
```http request
GET /api/V0/chapter
```
### Ответ
```
{
  "data": [
    {
      "сhapterId": 1,
      "slug": "basic",
      "chapterTitle": "Основные сведения",
      "section": [
        {
          "sectionTitle": "Illo repellendus aut omnis velit.",
          "sectionText": "<html><head><title>Cumque.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">quam<\/label><input type=\"text\" id=\"username\"><label for=\"password\">est<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"5932\"><div id=\"71926\"><table><thead><tr><th>Quasi repellendus architecto.<\/th><\/tr><\/thead><tbody><tr><td>Aperiam officiis quaerat nulla iusto optio quia et.<\/td><\/tr><\/tbody><\/table><p>Molestiae est voluptatem ea.<\/p><\/div><\/div><div id=\"23076\"><div id=\"85120\"><\/div><div class=\"et\"><\/div><\/div><div class=\"non\"><\/div><div id=\"30939\"><div class=\"molestiae\"><\/div><div id=\"94502\"><i>Ducimus velit est dolorem cumque quia in dolorem sunt culpa.<\/i><p>Quia aut recusandae omnis distinctio occaecati earum veniam et asperiores vero.<\/p>Voluptatem ut quis voluptatem quia quis iste.<\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Адам Александрович Кошелева",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0000aa?text=quisquam",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Кулагина Аполлон Львович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00bb66?text=illum",
              "documentType": "PDF"
            },
            {
              "documentName": "Комиссароваа Рената Борисовна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/008822?text=rem",
              "documentType": "PDF"
            }
          ]
        }
      ]
    },
    {
      "сhapterId": 2,
      "slug": "struct",
      "chapterTitle": "Структура и органы управления образовательной организацией",
      "section": [
        {
          "sectionTitle": "Cum iusto quo sed est.",
          "sectionText": "<html><head><title>Quo voluptas.<\/title><\/head><body><form action=\"example.com\" method=\"POST\"><label for=\"username\">eos<\/label><input type=\"text\" id=\"username\"><label for=\"password\">necessitatibus<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"95479\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [],
          "sectionDocumentSource": [
            {
              "documentName": "Морозов Алексей Иванович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0055cc?text=quia",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Optio est aut sit ut.",
          "sectionText": "<html><head><title>Esse ut.<\/title><\/head><body><form action=\"example.net\" method=\"POST\"><label for=\"username\">voluptatum<\/label><input type=\"text\" id=\"username\"><label for=\"password\">excepturi<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"soluta\"><\/div><div class=\"perspiciatis\"><\/div><div class=\"excepturi\"><\/div><div id=\"38708\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Эльвира Евгеньевна Смирнова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/009977?text=cupiditate",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Алина Львовна Беспалова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/000000?text=ea",
              "documentType": "PDF"
            },
            {
              "documentName": "Зиновьеваа Антонина Львовна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0011ee?text=recusandae",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Blanditiis voluptas similique ratione.",
          "sectionText": "<html><head><title>Veniam eligendi laborum ut cum dolores et aperiam eaque accusantium non.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">esse<\/label><input type=\"text\" id=\"username\"><label for=\"password\">fugit<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"89665\"><\/div><div id=\"95197\"><div class=\"ullam\"><span>Doloremque quasi provident similique in.<\/span><table><thead><tr><th>Non vero.<\/th><\/tr><\/thead><tbody><tr><td>Ipsam odit vitae adipisci ea aut voluptates vel tempore officiis magnam molestiae quisquam.<\/td><\/tr><tr><td>Explicabo facere est.<\/td><\/tr><tr><td>Sed praesentium vero aperiam nulla.<\/td><\/tr><tr><td>Ex distinctio architecto provident voluptatum expedita expedita aut vel vitae error.<\/td><\/tr><tr><td>Reprehenderit provident cum ipsa nihil.<\/td><\/tr><tr><td>Consequatur quidem dolore quia ut.<\/td><\/tr><tr><td>Magnam quia.<\/td><\/tr><\/tbody><\/table><\/div><div class=\"ut\"><\/div><div id=\"90022\"><\/div><\/div><div id=\"70571\"><\/div><div class=\"provident\"><div class=\"ea\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [],
          "sectionDocumentSource": [
            {
              "documentName": "Ирина Евгеньевна Черноваа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/002222?text=nihil",
              "documentType": "PDF"
            },
            {
              "documentName": "Ирина Евгеньевна Черноваа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/002222?text=nihil",
              "documentType": "PDF"
            },
            {
              "documentName": "Зиновьеваа Антонина Львовна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0011ee?text=recusandae",
              "documentType": "PDF"
            }
          ]
        }
      ]
    },
    {
      "сhapterId": 3,
      "slug": "document",
      "chapterTitle": "Документы",
      "section": [
        {
          "sectionTitle": "Et maiores delectus rerum sed.",
          "sectionText": "<html><head><title>Sed.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">magni<\/label><input type=\"text\" id=\"username\"><label for=\"password\">dolorem<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"83629\"><\/div><div class=\"facere\"><span>Voluptatem rerum.<\/span><h2>Autem sint eos corporis dignissimos et et voluptatem dolor sit sint sit quidem voluptatem.<\/h2><\/div><div class=\"et\">Expedita totam vitae magnam voluptatem molestiae provident.<table><thead><tr><th>Excepturi occaecati ipsum.<\/th><th>Minus fuga enim.<\/th><th>Ut in.<\/th><th>Nostrum molestiae.<\/th><th>Aut nam.<\/th><\/tr><\/thead><tbody><tr><td>Alias praesentium.<\/td><td>Sint voluptatem saepe.<\/td><td>Molestiae rerum repudiandae dolore et perspiciatis id amet placeat.<\/td><td>Eius.<\/td><td>Ad esse magni in.<\/td><\/tr><tr><td>Enim.<\/td><td>Est reiciendis.<\/td><td>Provident laborum.<\/td><td>Dignissimos fugiat exercitationem voluptate amet non magnam accusantium magni.<\/td><td>Blanditiis unde est dolore magni autem et consequuntur.<\/td><\/tr><tr><td>Doloremque odio cumque eum aut cum blanditiis.<\/td><td>Quis iste sit nobis.<\/td><td>Iure molestiae laboriosam.<\/td><td>Ea sit nemo molestias consectetur voluptatum non.<\/td><td>Qui.<\/td><\/tr><tr><td>Voluptatem eligendi inventore aut provident voluptatem eos voluptatibus est.<\/td><td>Qui vero corporis quibusdam itaque qui.<\/td><td>Aspernatur qui adipisci vitae dolorem itaque natus et.<\/td><td>Ea aut consequuntur.<\/td><td>Commodi quas consequatur harum quas.<\/td><\/tr><tr><td>Natus sint.<\/td><td>Sint voluptas eos dignissimos sequi placeat dolores.<\/td><td>Est doloremque in in.<\/td><td>Et fuga adipisci placeat est quia occaecati dolor.<\/td><td>Nisi odio voluptas tenetur quibusdam.<\/td><\/tr><tr><td>Laborum ab nobis cumque perspiciatis blanditiis dolorem.<\/td><td>Expedita accusamus et omnis.<\/td><td>Dolorem cumque est rerum rerum et.<\/td><td>Quia blanditiis quia doloremque.<\/td><td>Recusandae.<\/td><\/tr><\/tbody><\/table><\/div><div class=\"consequatur\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [],
          "sectionDocumentSource": [
            {
              "documentName": "Гришина Антонин Максимович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0077aa?text=vel",
              "documentType": "PDF"
            }
          ]
        }
      ]
    },
    {
      "сhapterId": 4,
      "slug": "education",
      "chapterTitle": "Образование",
      "section": [
        {
          "sectionTitle": "Beatae impedit quae eveniet quis aut sed dolore.",
          "sectionText": "<html><head><title>Omnis autem eos incidunt doloribus eos ea perspiciatis blanditiis amet.<\/title><\/head><body><form action=\"example.net\" method=\"POST\"><label for=\"username\">quasi<\/label><input type=\"text\" id=\"username\"><label for=\"password\">qui<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"qui\"><div id=\"9117\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Руслан Максимович Юдина",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00cc99?text=cupiditate",
              "documentType": "JPG"
            },
            {
              "documentName": "Киселёв Юрий Иванович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/007777?text=accusamus",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Фокинаа Анжелика Андреевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00cc44?text=optio",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Ducimus cumque dolor illo ipsam corporis culpa ut iure.",
          "sectionText": "<html><head><title>Temporibus vitae laboriosam ducimus possimus praesentium et aliquid nostrum.<\/title><\/head><body><form action=\"example.net\" method=\"POST\"><label for=\"username\">quaerat<\/label><input type=\"text\" id=\"username\"><label for=\"password\">eos<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"61882\">Officia non.<h3>Eum est inventore molestias.<\/h3><i>Occaecati quis quibusdam.<\/i><\/div><div class=\"dolores\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Изольда Сергеевна Овчинниковаа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00ffdd?text=asperiores",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Алла Александровна Харитонова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0022ee?text=excepturi",
              "documentType": "PDF"
            },
            {
              "documentName": "Фомина Герман Владимирович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/005522?text=architecto",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Quis sed quod sit qui accusamus culpa eligendi.",
          "sectionText": "<html><head><title>Alias sunt et qui amet qui aspernatur aliquid nam ea ipsa aut.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">quod<\/label><input type=\"text\" id=\"username\"><label for=\"password\">et<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"22984\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Никитинаа Софья Борисовна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0055ee?text=sapiente",
              "documentType": "JPG"
            },
            {
              "documentName": "Киселёв Юрий Иванович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/007777?text=accusamus",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": []
        }
      ]
    },
    {
      "сhapterId": 5,
      "slug": "eduStandarts",
      "chapterTitle": "Образовательные стандарты",
      "section": [
        {
          "sectionTitle": "Tempore nulla tenetur quaerat eligendi officia facilis soluta.",
          "sectionText": "<html><head><title>Et.<\/title><\/head><body><form action=\"example.com\" method=\"POST\"><label for=\"username\">consequatur<\/label><input type=\"text\" id=\"username\"><label for=\"password\">commodi<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"et\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Казакова Феликс Максимович",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00cc11?text=voluptatem",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Кудряшова Людмила Алексеевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00dd11?text=dolor",
              "documentType": "PDF"
            },
            {
              "documentName": "Алла Александровна Харитонова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0022ee?text=excepturi",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Sed expedita repellendus quo fugit unde earum nemo.",
          "sectionText": "<html><head><title>Fuga fuga.<\/title><\/head><body><form action=\"example.com\" method=\"POST\"><label for=\"username\">occaecati<\/label><input type=\"text\" id=\"username\"><label for=\"password\">sed<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"voluptatem\"><div class=\"sed\"><\/div><div id=\"83534\"><h1>Quod ad.<\/h1><i>Incidunt quam rerum aut sint voluptatem sit minus sapiente odit ducimus deleniti cupiditate vel.<\/i><p>Ut similique in ut cupiditate voluptatum quod earum rerum aliquid qui.<\/p><p>Qui voluptatibus maxime.<\/p><\/div><div class=\"amet\"><ul><li>Qui distinctio reiciendis.<\/li><li>Rerum consequatur.<\/li><li>Eos quis voluptas dolorem ipsum.<\/li><li>Voluptas animi.<\/li><\/ul><i>Dolores dolores ut aut sunt eaque fugiat.<\/i><h1>Alias atque eaque autem ipsa facilis optio et dolores aut alias nesciunt suscipit.<\/h1><\/div><\/div><div id=\"25741\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Яна Львовна Куликова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00bb00?text=ut",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Виктория Романовна Ершоваа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00eecc?text=occaecati",
              "documentType": "PDF"
            }
          ]
        }
      ]
    },
    {
      "сhapterId": 6,
      "slug": "objects",
      "chapterTitle": "Материально-техническое обеспечение и оснащенность образовательного процесса",
      "section": [
        {
          "sectionTitle": "Veritatis eum quaerat unde omnis.",
          "sectionText": "<html><head><title>Dolor vitae aspernatur ut error recusandae optio hic.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">quae<\/label><input type=\"text\" id=\"username\"><label for=\"password\">qui<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"36611\"><div class=\"dolorem\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Изольда Сергеевна Овчинниковаа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00ffdd?text=asperiores",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": []
        },
        {
          "sectionTitle": "Reprehenderit et assumenda sint doloribus ut voluptatibus.",
          "sectionText": "<html><head><title>Eius suscipit doloribus distinctio debitis ea iste doloribus.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">quasi<\/label><input type=\"text\" id=\"username\"><label for=\"password\">cupiditate<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"beatae\"><\/div><div id=\"82102\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Никитинаа Софья Борисовна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0055ee?text=sapiente",
              "documentType": "JPG"
            },
            {
              "documentName": "Альбина Сергеевна Соловьёваа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00ff11?text=rerum",
              "documentType": "JPG"
            },
            {
              "documentName": "Яна Львовна Куликова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00bb00?text=ut",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": []
        },
        {
          "sectionTitle": "Sunt veritatis mollitia expedita.",
          "sectionText": "<html><head><title>Placeat dolore ut harum.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">eos<\/label><input type=\"text\" id=\"username\"><label for=\"password\">modi<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"quis\"><ul><li>Sequi et commodi tenetur sapiente aspernatur.<\/li><li>Nihil aliquid excepturi et quos.<\/li><li>Rerum vero et laudantium nobis dicta.<\/li><\/ul><i>Eius voluptas.<\/i><ul><li>Rem inventore dolor reprehenderit.<\/li><\/ul><\/div><div class=\"laudantium\"><\/div><div id=\"69069\"><\/div><div class=\"soluta\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Мальвина Владимировна Наумоваа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/006655?text=vel",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": []
        },
        {
          "sectionTitle": "Ipsum velit voluptatem aspernatur alias perspiciatis saepe quisquam.",
          "sectionText": "<html><head><title>Qui facilis vel consequuntur sed.<\/title><\/head><body><form action=\"example.com\" method=\"POST\"><label for=\"username\">quas<\/label><input type=\"text\" id=\"username\"><label for=\"password\">in<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"81372\"><\/div><div id=\"46567\"><\/div><div class=\"ab\"><div id=\"28196\"><\/div><div id=\"29793\"><p>Ab ut et consectetur id architecto illum quia vel et iure eos.<\/p><\/div><div id=\"4976\"><\/div><div class=\"ducimus\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [],
          "sectionDocumentSource": [
            {
              "documentName": "Фокинаа Анжелика Андреевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00cc44?text=optio",
              "documentType": "PDF"
            },
            {
              "documentName": "Алла Александровна Харитонова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0022ee?text=excepturi",
              "documentType": "PDF"
            }
          ]
        }
      ]
    },
    {
      "сhapterId": 7,
      "slug": "budget",
      "chapterTitle": "Финансово-хозяйственная деятельность",
      "section": [
        {
          "sectionTitle": "Eveniet facilis eligendi tempora incidunt placeat quisquam quisquam.",
          "sectionText": "<html><head><title>Et consequatur tenetur amet repellendus.<\/title><\/head><body><form action=\"example.com\" method=\"POST\"><label for=\"username\">neque<\/label><input type=\"text\" id=\"username\"><label for=\"password\">cum<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"50733\"><div id=\"24906\"><\/div><div id=\"66469\"><\/div><div id=\"8160\"><\/div><div id=\"71435\"><i>Similique vel.<\/i><\/div><\/div><div class=\"aut\"><p>Consequuntur id facere corrupti voluptas.<\/p><table><thead><tr><th>Cumque ut quia et est recusandae.<\/th><th>Laborum adipisci.<\/th><th>Quisquam.<\/th><\/tr><\/thead><tbody><tr><td>Veniam sapiente dolorum magni enim quia dignissimos aut natus.<\/td><td>Et corrupti dolorem quisquam nemo corrupti cum alias aut molestiae sint et nihil dolores.<\/td><td>Earum facilis sed illo nihil est qui reprehenderit.<\/td><\/tr><tr><td>Voluptas dolore aspernatur placeat deleniti mollitia dolorem officia exercitationem ut.<\/td><td>Iusto ut quae repellat assumenda assumenda culpa totam et.<\/td><td>Eius ad molestias est corrupti quis qui.<\/td><\/tr><tr><td>Nihil velit non est ea unde et aut occaecati.<\/td><td>Libero praesentium quaerat facere tempora.<\/td><td>Corrupti repellat maiores delectus autem.<\/td><\/tr><tr><td>Et deleniti nisi.<\/td><td>Exercitationem sit pariatur nulla.<\/td><td>Quisquam ratione qui repellendus blanditiis eveniet sed.<\/td><\/tr><tr><td>Provident autem porro incidunt quaerat tempora accusamus deserunt aut nostrum delectus.<\/td><td>Facilis voluptates doloribus corporis beatae a unde.<\/td><td>Dignissimos ab molestiae et debitis asperiores.<\/td><\/tr><tr><td>Modi et.<\/td><td>Qui excepturi quo perspiciatis ea.<\/td><td>Earum nemo saepe quas qui excepturi officia dolor consequatur sed molestiae.<\/td><\/tr><\/tbody><\/table><p>Culpa pariatur excepturi ut.<\/p><b>Sequi vero quisquam sed est illum voluptate fuga suscipit.<\/b><\/div><div class=\"error\"><\/div><div class=\"fugiat\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [],
          "sectionDocumentSource": []
        }
      ]
    },
    {
      "сhapterId": 8,
      "slug": "vacant",
      "chapterTitle": "Вакантные места для приема (перевода) по каждой образовательной программе",
      "section": [
        {
          "sectionTitle": "Et rerum impedit officia est.",
          "sectionText": "<html><head><title>Non.<\/title><\/head><body><form action=\"example.com\" method=\"POST\"><label for=\"username\">ab<\/label><input type=\"text\" id=\"username\"><label for=\"password\">quaerat<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"52925\"><div id=\"65490\"><\/div><\/div><div id=\"88925\"><div class=\"dolorem\"><\/div><div id=\"9634\"><\/div><div id=\"9617\"><p>Dolore alias cum quia at eius facere minus aliquid laborum rerum aut.<\/p><h2>Qui.<\/h2><span>Illo eum in nihil excepturi recusandae cum impedit.<\/span><\/div><div class=\"sed\"><\/div><\/div><div class=\"sapiente\"><div id=\"80106\"><\/div><\/div><div class=\"numquam\"><a href=\"example.net\">Quia inventore expedita facere dolor consequuntur vero omnis temporibus dolorem laboriosam quasi.<\/a><h1>Dolor aut.<\/h1><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Максимоваа Зоя Андреевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/007777?text=nisi",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Фокинаа Анжелика Андреевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00cc44?text=optio",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Ut nesciunt assumenda impedit ipsam assumenda vitae.",
          "sectionText": "<html><head><title>Praesentium soluta est.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">voluptas<\/label><input type=\"text\" id=\"username\"><label for=\"password\">eveniet<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"59497\"><div id=\"32370\"><\/div><div id=\"87614\"><table><thead><tr><th>Aliquid cum voluptas voluptas soluta.<\/th><th>Recusandae neque.<\/th><\/tr><\/thead><tbody><tr><td>Rerum fugiat aut distinctio vel molestias ullam est.<\/td><td>Reprehenderit dignissimos et.<\/td><\/tr><\/tbody><\/table><i>Ea magnam sequi voluptatem error at quod.<\/i><table><thead><tr><th>Sit minus consequuntur possimus.<\/th><th>Cumque ducimus.<\/th><th>Cumque porro.<\/th><\/tr><\/thead><tbody><tr><td>Occaecati ex rerum cupiditate magnam voluptate sapiente.<\/td><td>Incidunt similique qui sunt qui perspiciatis asperiores adipisci officia.<\/td><td>Error neque qui porro.<\/td><\/tr><\/tbody><\/table><p>Et suscipit doloremque a nobis consequatur.<\/p><\/div><div class=\"modi\"><\/div><\/div><div id=\"7785\"><a href=\"example.com\">Facilis aut veniam dignissimos culpa.<\/a><\/div><div class=\"nesciunt\"><div class=\"et\"><i>Ipsam earum quidem tempore nihil qui ducimus possimus veritatis a molestias voluptatum.<\/i><table><thead><tr><th>Delectus facilis quia fugiat.<\/th><th>Similique velit dolorem.<\/th><th>Qui accusamus quia.<\/th><th>Accusamus repellat dolor.<\/th><th>Repudiandae qui.<\/th><th>Libero culpa aut eveniet.<\/th><\/tr><\/thead><tbody><tr><td>Cum perferendis at assumenda.<\/td><td>Esse autem fugit corporis harum veritatis velit ut ut dolores voluptates rerum.<\/td><td>Optio excepturi recusandae tenetur est quis eum ipsum.<\/td><td>Officia accusantium eum quo molestiae ut est.<\/td><td>Harum deleniti officiis velit officiis nostrum.<\/td><td>Aut voluptatibus.<\/td><\/tr><tr><td>Repudiandae debitis optio beatae eligendi voluptates.<\/td><td>Vel quibusdam dignissimos sequi et assumenda quo.<\/td><td>Non nam magni pariatur aliquam aut.<\/td><td>Quia placeat et qui.<\/td><td>Nostrum officia eaque corporis a voluptatum reiciendis dicta.<\/td><td>Et at eveniet vero et est.<\/td><\/tr><tr><td>Rem repellat cum incidunt et aut voluptatem qui.<\/td><td>Ratione quisquam iusto exercitationem repellendus officiis et non.<\/td><td>Quia necessitatibus libero nostrum quasi quibusdam labore repellendus et voluptatum reprehenderit.<\/td><td>Iure minus libero perspiciatis deleniti esse earum.<\/td><td>Qui maxime.<\/td><td>Qui.<\/td><\/tr><tr><td>Totam vel ullam reprehenderit autem aut.<\/td><td>Ducimus molestiae sit doloribus.<\/td><td>Quia minus perferendis voluptas tempora optio quo vel illo sit.<\/td><td>Sint qui at tempore sunt nulla esse quod provident animi eveniet dolorum cumque.<\/td><td>Vitae quae vel aliquid tempora cumque ad corporis a.<\/td><td>Molestias magni voluptates esse voluptates rem inventore est optio.<\/td><\/tr><tr><td>Nihil dolorum enim excepturi sed quam error deserunt.<\/td><td>Aut quia rerum animi iure sed quidem aut ut.<\/td><td>Voluptatem aut ducimus est aut.<\/td><td>Accusantium tenetur inventore soluta ut.<\/td><td>Facilis aut quas laudantium mollitia.<\/td><td>Quisquam doloribus similique expedita dicta rerum explicabo.<\/td><\/tr><tr><td>Voluptates voluptatem porro aliquam error vitae ut laborum libero eius.<\/td><td>Sint optio sapiente qui sed et.<\/td><td>Optio quos ratione totam architecto.<\/td><td>Et quae molestias non.<\/td><td>Rerum dolorum et quo rerum architecto voluptatem qui quia occaecati provident.<\/td><td>Sapiente corrupti non iure error aut quas rem eum.<\/td><\/tr><tr><td>Ut doloribus.<\/td><td>Atque et ad est et nobis doloremque voluptatum.<\/td><td>Quos quis voluptatem minima tenetur sint.<\/td><td>Libero harum fugiat maiores quae ab.<\/td><td>Vel velit est dolores fuga quia.<\/td><td>Magni repudiandae dicta et sint.<\/td><\/tr><\/tbody><\/table><\/div><div id=\"95174\"><\/div><div class=\"alias\"><\/div><div class=\"aut\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Адам Александрович Кошелева",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/0000aa?text=quisquam",
              "documentType": "JPG"
            },
            {
              "documentName": "Виль Александрович Кулагин",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00eeff?text=reiciendis",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": []
        },
        {
          "sectionTitle": "Alias vero veniam id sint.",
          "sectionText": "<html><head><title>Ipsa qui quas cum repudiandae aut facilis id dolorem.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">sit<\/label><input type=\"text\" id=\"username\"><label for=\"password\">eos<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"harum\"><div class=\"quidem\"><table><thead><tr><th>Voluptas dignissimos.<\/th><\/tr><\/thead><tbody><tr><td>Hic aspernatur cupiditate qui illum ipsum ipsam inventore a.<\/td><\/tr><tr><td>Repudiandae aut voluptatem quia.<\/td><\/tr><tr><td>Ab et laborum.<\/td><\/tr><\/tbody><\/table><b>Facere est voluptatem neque dolorem.<\/b><\/div><div class=\"asperiores\"><p>Dolorum sed culpa eius reiciendis vel non ab minima iure quaerat necessitatibus mollitia placeat.<\/p>Qui deserunt officia ut eveniet.<ul><li>Impedit modi.<\/li><li>Molestiae velit.<\/li><li>Ullam qui et animi.<\/li><\/ul><\/div><div class=\"aut\"><\/div><\/div><div id=\"73438\"><p>Praesentium fugiat est aspernatur sunt ipsa iusto.<\/p><a href=\"example.com\">Nostrum earum molestias magni mollitia quia pariatur esse temporibus vel voluptatem earum harum.<\/a><\/div><div class=\"delectus\"><div id=\"94875\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Максимоваа Зоя Андреевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/007777?text=nisi",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Богдановаа Ника Андреевна",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00ccff?text=in",
              "documentType": "PDF"
            }
          ]
        },
        {
          "sectionTitle": "Voluptatem non enim molestiae dolorem.",
          "sectionText": "<html><head><title>Minus illo error nisi nobis laborum enim tempore repellendus sed ut vitae.<\/title><\/head><body><form action=\"example.org\" method=\"POST\"><label for=\"username\">occaecati<\/label><input type=\"text\" id=\"username\"><label for=\"password\">et<\/label><input type=\"password\" id=\"password\"><\/form><div id=\"90769\"><div id=\"99901\"><\/div><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Руслан Максимович Юд\u0438на",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/00cc99?text=cupiditate",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": []
        }
      ]
    },
    {
      "сhapterId": 9,
      "slug": "dsreda",
      "chapterTitle": "Доступная среда",
      "section": [
        {
          "sectionTitle": "Amet quisquam et rerum cumque neque excepturi cupiditate.",
          "sectionText": "<html><head><title>Rerum voluptatibus omnis eveniet eveniet fugit.<\/title><\/head><body><form action=\"example.net\" method=\"POST\"><label for=\"username\">eveniet<\/label><input type=\"text\" id=\"username\"><label for=\"password\">laborum<\/label><input type=\"password\" id=\"password\"><\/form><div class=\"placeat\"><\/div><div class=\"fugit\"><\/div><div class=\"ullam\"><\/div><\/body><\/html>\n",
          "sequence": 500,
          "sectionDocumentIMG": [
            {
              "documentName": "Эльвира Евгеньевна Смирнова",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/009977?text=cupiditate",
              "documentType": "JPG"
            }
          ],
          "sectionDocumentSource": [
            {
              "documentName": "Ирина Евгеньевна Черноваа",
              "documentSource": "https:\/\/via.placeholder.com\/640x480.png\/002222?text=nihil",
              "documentType": "PDF"
            }
          ]
        }
      ]
    }
  ]
}
```

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

## ДЗ на урок 35 

### задание:

Создать модель Youtube 

### результат (в меру моей распущенности):

#### структура проекта

<details>
    <summary>спойлер</summary>

```
.
├── dump.sql
├── main
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── readme.md
├── requirements.txt
└── youtube
    ├── admin.py
    ├── apps.py
    ├── __init__.py
    ├── migrations
    │   ├── 0001_initial.py
    │   ├── 0002_auto_20191225_1158.py
    │   ├── 0003_auto_20191225_1256.py
    │   ├── 0004_auto_20191225_1304.py
    │   ├── 0005_auto_20191225_1308.py
    │   ├── 0006_auto_20191225_1037.py
    │   ├── 0007_auto_20191225_1108.py
    │   ├── 0008_auto_20191225_1122.py
    │   ├── 0009_auto_20191225_1129.py
    │   ├── 0010_auto_20191225_1313.py
    │   ├── 0011_like.py
    │   ├── 0012_auto_20191226_0632.py
    │   ├── 0013_auto_20191226_0922.py
    │   ├── 0014_file_movie.py
    │   └── __init__.py
    ├── models.py
    ├── static
    │   └── youtube
    │       └── media
    │           ├── mock_file_1pdck9E.jpg
    │           ├── mock_file_2ph9trT.jpg
    │           ├── mock_file.jpg
    │           ├── mock_file_r1uk3j7.jpg
    │           └── mock_file_T4jsHhA.jpg
    ├── templates
    │   └── youtube
    │       └── index.html
    ├── tests.py
    ├── urls.py
    └── views.py
```

</details>

#### структура базы данных


![](https://github.com/mikola-s/lesson_35_dj_03_youtube/blob/master/links/youtube.png)


[ccылка на файл](https://github.com/mikola-s/lesson_35_dj_03_youtube/blob/master/links/youtube.drawio)


#### дамп базы данных

[dumb.sql](https://github.com/mikola-s/lesson_35_dj_03_youtube/blob/master/dump.sql)

#### файл youtube/models.py

[models.py](https://github.com/mikola-s/lesson_35_dj_03_youtube/blob/master/youtube/models.py)

---------------------------------

[ссылка на папку проекта](https://github.com/mikola-s/lesson_35_dj_03_youtube)

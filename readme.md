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

<details>
    <summary>спойлер</summary>
        
```python

from django.db import models


# Create your models here.

class Gender(models.Model):
    """ user -> gender """
    gender = models.CharField(max_length=20)

    def __str__(self):
        return self.gender


class Status(models.Model):
    """ user -> status """
    status = models.CharField(max_length=20)

    def __str__(self):
        return self.status


class User(models.Model):
    login = models.CharField(
        verbose_name='User name',
        max_length=32,
        unique=True,
    )
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=255)
    register_time = models.DateTimeField(auto_now_add=True)
    first_name = models.CharField(max_length=20, null=True, blank=True)
    last_name = models.CharField(max_length=20, null=True, blank=True)
    birth_date = models.DateField(null=True, blank=True)
    gender = models.ForeignKey(Gender, on_delete=models.CASCADE, null=True, blank=True)
    status = models.ForeignKey(Status, on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return f'Youtube user {self.login}'


class Channel(models.Model):
    """ user -> channel """
    title = models.CharField(max_length=255)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Movie(models.Model):
    """ user -> channel -> movies"""
    title = models.CharField(max_length=255)
    post_time = models.DateTimeField(auto_now_add=True)
    channel = models.ForeignKey(Channel, on_delete=models.CASCADE)
    screen_shot = models.ImageField(
        upload_to=f'youtube/static/youtube/media/',
        null=True,
        blank=True,
    )

    def __str__(self):
        return self.title


class File(models.Model):
    """ movie -> file """
    place = models.FileField(upload_to=f'youtube/static/youtube/media/')
    movie = models.OneToOneField(Movie, on_delete=models.CASCADE)


class Miniature(models.Model):
    """ movie -> file -> miniature"""
    place = models.FileField(upload_to=f'youtube/static/youtube/media/')
    file = models.ForeignKey(File, on_delete=models.CASCADE)


class ExpressionType(models.Model):
    """ expression -> expression type: like, dislike etc. """
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class Expression(models.Model):
    """ user -> expression <- movies """

    class Meta:
        unique_together = ['movie', 'user']

    type = models.ForeignKey(ExpressionType, on_delete=models.CASCADE, null=True, blank=True)
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return 'Expression'

```

</details>

[models.py](https://github.com/mikola-s/lesson_35_dj_03_youtube/blob/master/youtube/models.py)

---------------------------------

[ссылка на папку проекта](https://github.com/mikola-s/lesson_35_dj_03_youtube)

from django.db import models


# Create your models here.

class Gender(models.Model):
    pass


class Status(models.Model):
    pass


class User(models.Model):
    login = models.CharField(
        verbose_name='User name',
        max_length=20,
        unique=True,
    )
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=20)


class Channel(models.Model):
    pass


class Movie(models.Model):
    title = models.CharField(max_length=255)
    post_time = models.DateTimeField(auto_now_add=True)
    file = models.URLField('static/avi/mock_file.jpg')

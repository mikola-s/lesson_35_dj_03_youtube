from django.db import models


# Create your models here.

class Gender(models.Model):
    gender = models.CharField(max_length=64)


class Status(models.Model):
    status = models.CharField(max_length=64)


class User(models.Model):
    login = models.CharField(
        verbose_name='User name',
        max_length=32,
        unique=True,
    )
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=255)
    gender = models.ForeignKey(Gender)
    status = models.ForeignKey(Status)


class Channel(models.Model):
    title = models.CharField(max_length=255)


class Movie(models.Model):
    title = models.CharField(max_length=255)
    post_time = models.DateTimeField(auto_now_add=True)
    file = models.URLField('static/avi/mock_file.jpg')

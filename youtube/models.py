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
    )


class Channel(models.Model):
    pass


class Movie(models.Model):
    pass

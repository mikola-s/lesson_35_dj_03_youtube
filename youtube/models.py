from django.db import models


# Create your models here.

class Gender(models.Model):
    gender = models.CharField(max_length=64)

    def __str__(self):
        return self.gender


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
    register_time = models.DateTimeField(auto_now_add=True, null=True, blank=True)
    gender = models.ForeignKey(Gender, on_delete=models.CASCADE)
    status = models.ForeignKey(Status, on_delete=models.CASCADE)

    def __str__(self):
        return f'site user {self.login}'


class Channel(models.Model):
    title = models.CharField(max_length=255)


class Movie(models.Model):
    title = models.CharField(max_length=255)
    post_time = models.DateTimeField(auto_now_add=True, null=True, blank=True)
    file = models.FileField(upload_to='youtube/media/mock_file.jpg')

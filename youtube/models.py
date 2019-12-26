from django.db import models


# Create your models here.

class Gender(models.Model):
    gender = models.CharField(max_length=20)

    def __str__(self):
        return self.gender


class Status(models.Model):
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
    title = models.CharField(max_length=255)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Movie(models.Model):
    title = models.CharField(max_length=255)
    post_time = models.DateTimeField(auto_now_add=True)
    channel = models.ForeignKey(Channel, on_delete=models.CASCADE)
    screen_shot = models.ImageField(
        upload_to=f'youtube/static/youtube/media/',
        null=True,
        blank=True,
    )
    file = models.FileField(
        upload_to=f'youtube/static/youtube/media/',
        null=True,
        blank=True,
    )

    def __str__(self):
        return self.title


class OpinionType(models.Model):
    name = models.CharField(max_length=20)


class Like(models.Model):
    class Meta:
        pass
        unique_together = ['movie', 'user']

    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

from django.contrib import admin
from . import models
# Register your models here.

admin.register(models.User)
admin.register(models.Channel)
admin.register(models.Movie)
admin.register(models.Gender)
admin.register(models.Status)

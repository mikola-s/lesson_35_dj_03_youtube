from django.contrib import admin
from . import models
# Register your models here.

admin.site.register(models.User)
admin.site.register(models.Channel)
admin.site.register(models.Movie)
admin.site.register(models.Gender)
admin.site.register(models.Status)
admin.site.register(models.Expression)
admin.site.register(models.ExpressionType)

# Generated by Django 2.2 on 2019-12-25 13:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('youtube', '0008_auto_20191225_1122'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='post_time',
            field=models.DateTimeField(auto_now_add=True),
        ),
        migrations.AlterField(
            model_name='user',
            name='register_time',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]

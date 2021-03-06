# Generated by Django 2.2 on 2019-12-25 13:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('youtube', '0007_auto_20191225_1108'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='channel',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='youtube.Channel'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='movie',
            name='screen_shot',
            field=models.ImageField(default='youtube/media/mock_file.jpg', upload_to=''),
        ),
        migrations.AlterField(
            model_name='movie',
            name='file',
            field=models.FileField(default='youtube/media/mock_file.jpg', upload_to='youtube/media/'),
        ),
    ]

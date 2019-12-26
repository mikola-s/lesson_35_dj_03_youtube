# Generated by Django 2.2 on 2019-12-25 15:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('youtube', '0010_auto_20191225_1313'),
    ]

    operations = [
        migrations.CreateModel(
            name='Like',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('movie', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='youtube.Movie')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='youtube.User')),
            ],
            options={
                'unique_together': {('movie', 'user')},
            },
        ),
    ]
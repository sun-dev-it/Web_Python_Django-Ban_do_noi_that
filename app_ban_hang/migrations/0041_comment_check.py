# Generated by Django 3.2.12 on 2023-06-15 16:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_ban_hang', '0040_alter_blog_like'),
    ]

    operations = [
        migrations.AddField(
            model_name='comment',
            name='check',
            field=models.BooleanField(default=False),
        ),
    ]

# Generated by Django 3.2.12 on 2023-05-23 11:44

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app_ban_hang', '0022_rename_orderitems_orderitem'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='sanpham',
            name='LoaiSP',
        ),
    ]

# Generated by Django 4.1 on 2022-10-19 17:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0013_remove_signup_service_uid_signup_service_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='signup',
            name='token',
            field=models.CharField(default=1, max_length=22),
            preserve_default=False,
        ),
    ]

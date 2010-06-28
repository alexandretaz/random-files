# _*_ coding: UTF-8 _*_

from django.db import models

# Create your models here.

class Prod(models.Model):
    name = models.CharField(max_length=255, blank=True, null=True,verbose_name='Nome')
    genres = models.ManyToManyField('Gen' , verbose_name='Gêneros', null=True, blank=True )

class Gen(models.Model):
    name = models.CharField(max_length=255,verbose_name='Nome')

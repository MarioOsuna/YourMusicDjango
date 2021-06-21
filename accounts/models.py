from chat.models import Canal
from django.db import models
from django.contrib.auth.models import User
from django.db.models.deletion import CASCADE
from django.conf import settings
from django.dispatch import receiver 
import os
from noticias.models import Noticias



# Create your models here.
class Generos(models.Model):
    title = models.CharField(max_length=30)

    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)


""" class Ciudad(models.Model):
    title = models.CharField(max_length=30)

    class Meta:
        ordering = ['title']

    def __str__(self):
        return self.title """
class Provincia(models.Model):
    title = models.CharField(max_length=30)
    # ciudades=models.ManyToManyField(Ciudad)

    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)

class Audios(models.Model):
    title = models.CharField(max_length=150)
    # url_audio = models.CharField(max_length=500)
    url_audio = models.FileField(upload_to="user/song", null=True, blank=True)


    def __unicode__(self):
        return str(self.id)
    def __str__(self) :
        return str(self.title)
    class Meta:
        ordering = ('title','url_audio',)
class Videos(models.Model):
    title = models.CharField(max_length=150)
    url_video = models.CharField(max_length=500)

    def __unicode__(self):
        return str(self.id)
    def __str__(self) :
        return str(self.title)
    class Meta:
        ordering = ('title','url_video',)
class TipoOjeador(models.Model):
    title = models.CharField(max_length=30)

    def __str__(self) :
        return self.title
    

class UserProfileMusicos(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    nombre_profile = models.CharField(max_length=255)
    avatar=models.ImageField(upload_to='user/img',blank=True,null=True)
    """ avatar = JPEGField(
        , variations={'custom': {'width': 550, 'height': 750, "crop": True}}) """
    generos=models.ManyToManyField(Generos)
    descripcion=models.TextField()
    provincia_origen=models.ForeignKey(Provincia,on_delete=models.CASCADE)   
    # ciudad_origen=models.ForeignKey(Ciudad)    
    twitter=models.CharField(max_length=300,blank=True,null=True)
    instagram=models.CharField(max_length=300,blank=True,null=True)
    facebook=models.CharField(max_length=300,blank=True,null=True)
    web=models.CharField(max_length=300,blank=True,null=True)
    email_profile=models.CharField(max_length=50,blank=True,null=True)
    url_audios=models.ManyToManyField(Audios,blank=True,null=True)
    url_videos=models.ManyToManyField(Videos,blank=True,null=True)
    noticias=models.ManyToManyField(Noticias,blank=True,null=True)
    canal_mensajes=models.ManyToManyField(Canal,blank=True,null=True)
    
    def __str__(self) :
        return self.nombre_profile   


class UserProfileOjeadores(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    nombre_profile = models.CharField(max_length=255)
    avatar=models.ImageField(upload_to='user/img',blank=True,null=True)
    generos=models.ManyToManyField(Generos)
    descripcion=models.TextField()
    provincia_origen=models.ForeignKey(Provincia,on_delete=models.CASCADE)   
    twitter=models.CharField(max_length=300,blank=True,null=True)
    instagram=models.CharField(max_length=300,blank=True,null=True)
    facebook=models.CharField(max_length=300,blank=True,null=True)
    web=models.CharField(max_length=300,blank=True,null=True)
    email_profile=models.CharField(max_length=50,blank=True,null=True)
    tipo_ojeador=models.ForeignKey(TipoOjeador,on_delete=models.CASCADE)
    noticias=models.ManyToManyField(Noticias,blank=True,null=True)
    canal_mensajes=models.ManyToManyField(Canal,blank=True,null=True)

    def __str__(self) :
        return self.nombre_profile

    


    
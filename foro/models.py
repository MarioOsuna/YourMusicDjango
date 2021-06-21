from django.contrib.auth.models import User
from django.db import models

class Mensajes_post(models.Model):
    title = models.CharField(max_length=160)
    descripcion=models.TextField()
    autor_mensaje=models.ForeignKey(User,on_delete=models.CASCADE)
    date_posted=models.DateTimeField(auto_now_add=True)
    
    
    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)

class Post(models.Model):    
    title = models.CharField(max_length=160)
    descripcion=models.TextField()
    autor_post=models.ForeignKey(User,on_delete=models.CASCADE)
    mensajes_post=models.ManyToManyField(Mensajes_post,blank=True,null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)   
    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)

class Tema_foro(models.Model):
    title = models.CharField(max_length=160)
    descripcion=models.TextField()
    post_foro=models.ManyToManyField(Post,blank=True,null=True)
    
    def __unicode__(self):
        return self.title
    def __str__(self) :
        return self.title

    class Meta:
        ordering = ('title',)
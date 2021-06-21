from django.contrib.auth.models import User
from django.db import models

class Mensajes(models.Model):        
    text=models.TextField()
    date_posted=models.DateTimeField(auto_now_add=True)
    emisor=models.ForeignKey(User,related_name="emisor",on_delete=models.CASCADE)
    receptor=models.ForeignKey(User,related_name="receptor",on_delete=models.CASCADE)

    def __str__(self):
        return 'Mensaje #{}'.format(self.id)
class Canal(models.Model):
    title=models.CharField(max_length=300,default="conversation",blank=True,null=True)
    mensajes_conver=models.ManyToManyField(Mensajes,blank=True,null=True)
    usuarios=models.ManyToManyField(User,blank=True,null=True)
    emisor=models.ForeignKey(User,related_name="emisor_canal",on_delete=models.CASCADE,blank=True,null=True)
    receptor=models.ForeignKey(User,related_name="receptor_canal",on_delete=models.CASCADE,blank=True,null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)    
    eliminado_emisor=models.BooleanField(default=False)
    eliminado_receptor=models.BooleanField(default=False)
    leido_emisor=models.BooleanField(default=False)
    leido_receptor=models.BooleanField(default=False)


    def __str__(self):
        return 'Conversación #{}'.format(self.id)

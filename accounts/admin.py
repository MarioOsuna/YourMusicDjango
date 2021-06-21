from django.contrib import admin

# Register your models here.
from .models import UserProfileMusicos,Videos,Audios,Generos,UserProfileOjeadores,TipoOjeador,Provincia
from noticias.models import Noticias
from chat.models import Mensajes,Canal
from foro.models import Tema_foro,Post,Mensajes_post

admin.site.register(UserProfileMusicos)
admin.site.register(UserProfileOjeadores)
admin.site.register(Provincia)
admin.site.register(Noticias)
admin.site.register(Mensajes)
admin.site.register(Canal)
admin.site.register(Tema_foro)
admin.site.register(Post)
admin.site.register(Mensajes_post)
# admin.site.register(Ciudad)
admin.site.register(TipoOjeador)
admin.site.register(Videos)
admin.site.register(Audios)
admin.site.register(Generos)
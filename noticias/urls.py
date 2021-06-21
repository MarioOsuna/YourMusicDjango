
from django.urls import path
from . import views
from django.contrib.sitemaps.views import sitemap



app_name = 'noticias'
urlpatterns = [
       path('index_noticias/', views.index_noticias, name='noticias'),
       path('noticia/<int:pk>', views.noticia, name='noticia'),

]

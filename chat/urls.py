
from django.urls import path
from . import views


app_name='chat'
    # path('delete/<int:pk>', views.delete, name='delete'),
urlpatterns = [
    path('allMessage', views.allMessage, name='allMessage'),
    path('allMessage/<int:pk>', views.allMessage, name='allMessage'),
    path('conversation/<int:pk>', views.conversation, name='conversation'),
    path('contactar/<int:pk>/<str:tipo>', views.contactar, name='contactar'),
    
]

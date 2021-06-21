
from django.urls import path
from . import views


app_name='account'
urlpatterns = [
    path('user_data/<int:pk>', views.user_data, name='user_data'),
    path('info_data/<str:tipo>', views.info_data, name='info_data'),
    path('info_data/<str:tipo>/<int:pk>/<int:code>', views.info_data, name='info_data'),
    path('noticias_user', views.noticias_user, name='noticias_user'),
    path('noticias_user/<str:tipo>/<int:pk>/', views.noticias_user, name='noticias_user'),
    path('profile/', views.profile,name='profile'),
    path('choose_profile/', views.choose_profile,name='choose_profile'),
    path('register/', views.register,name='register'),
    path('delete/', views.delete,name='delete'),
    path('login',views.login),
    path('reset_password/',views.reset_password,name='reset_password'),
    path('password_reset_complete/<str:token>',views.password_reset_complete,name='password_reset_complete'),
]

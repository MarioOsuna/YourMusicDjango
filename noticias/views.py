from django.contrib.auth.models import User
from django.core.paginator import Paginator
from django.http.response import HttpResponse
from django.shortcuts import render
from .models import Noticias
from accounts.models import UserProfileMusicos, UserProfileOjeadores
import datetime

# Create your views here.


def index_noticias(request):
    """ __lte """
    noticias = Noticias.objects.all().order_by('-updated_at')
    '''
    created_at, descripcion, id, title, updated_at, userprofilemusicos, userprofileojeadores
    '''


    usuario = User.objects.all()

    paginator = Paginator(noticias, 4)

    page_number = request.GET.get('page')
    noticias_page = paginator.get_page(page_number)

    return render(request, 'index_noticias.html', {'noticias':  noticias_page,  'noticiasU': usuario})

def noticia(request,pk):

    noticia = Noticias.objects.get(id=pk)
    
    return render(request, 'noticia.html', {'noticia':  noticia})

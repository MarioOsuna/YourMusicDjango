from django.shortcuts import get_object_or_404, render, redirect, reverse
from accounts.models import  UserProfileOjeadores, Generos, Provincia
from noticias.models import Noticias
from django.core.paginator import Paginator
from django.views import generic

from django.contrib.auth.decorators import login_required
from django.views.decorators.http import require_POST
from django.http import HttpResponseNotFound, JsonResponse


def index_ojeador(request):
    search = request.GET.get('search') if request.GET.get('search') else ''
    genero_id = []
    provincia_id = request.GET.get(
        'provincia_id') if request.GET.get('provincia_id') else ''
    ojeador = UserProfileOjeadores.objects
    provincia = Provincia.objects.all()
    busqueda = False

    # genero_id = int(genero_id) if genero_id else ''
    generos = Generos.objects.all()

    for item in request.GET.getlist('generos'):
        # print(int(item))
        genero_id.append(item)

    if search:
        ojeador = UserProfileOjeadores.objects.filter(
            nombre_profile__icontains=search)
        busqueda = True

    else:
        ojeador = UserProfileOjeadores.objects

    if genero_id:
        busqueda = True
        ojeador = ojeador.filter(generos__in=genero_id)

    if provincia_id:
        busqueda = True
        ojeador = ojeador.filter(provincia_origen=provincia_id)

    ojeador = ojeador.all()

    paginator = Paginator(ojeador, 3)

    page_number = request.GET.get('page')
    ojeador_page = paginator.get_page(page_number)

    # return render(request, 'indexGrupos.html', {'ojeador': ojeador_page, 'generos': generos, 'search': search, 'genero_id': genero_id, })
    return render(request, 'index_ojeador.html', {'ojeador': ojeador_page, 'provincia': provincia, 'generos': generos, 'search': search, 'genero_id': genero_id, 'provincia_id': provincia_id, 'busqueda': busqueda})

def detail_ojeador(request,pk):
    ojeador = UserProfileOjeadores.objects.get(pk=pk)
    
    generos= Generos.objects.filter(userprofileojeadores=ojeador.id)
    noticias=Noticias.objects.filter(userprofileojeadores=ojeador.id)
    print(noticias)
   
    return render(request,'detail_ojeador.html',{'ojeador':ojeador,'generos':generos,'noticias':noticias,'pk':pk})

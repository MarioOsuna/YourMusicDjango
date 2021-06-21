from django.shortcuts import get_object_or_404, render, redirect, reverse
from accounts.models import UserProfileMusicos, UserProfileOjeadores, Generos, Provincia,Videos,Audios
from noticias.models import Noticias
from django.core.paginator import Paginator
from django.views import generic

from django.contrib.auth.decorators import login_required
from django.views.decorators.http import require_POST
from django.http import HttpResponseNotFound, JsonResponse


def index(request):
    search = request.GET.get('search') if request.GET.get('search') else ''
    genero_id = []
    provincia_id = request.GET.get(
        'provincia_id') if request.GET.get('provincia_id') else ''
    grupos = UserProfileMusicos.objects
    provincia = Provincia.objects.all()
    busqueda = False

    # genero_id = int(genero_id) if genero_id else ''
    generos = Generos.objects.all()

    for item in request.GET.getlist('generos'):
        # print(int(item))
        genero_id.append(item)

    if search:
        grupos = UserProfileMusicos.objects.filter(
            nombre_profile__icontains=search)
        busqueda = True

    else:
        grupos = UserProfileMusicos.objects

    if genero_id:
        busqueda = True
        grupos = grupos.filter(generos__in=genero_id)

    if provincia_id:
        busqueda = True
        grupos = grupos.filter(provincia_origen=provincia_id)

    grupos = grupos.all()

    paginator = Paginator(grupos, 3)

    page_number = request.GET.get('page')
    grupos_page = paginator.get_page(page_number)

    # return render(request, 'indexGrupos.html', {'grupos': grupos_page, 'generos': generos, 'search': search, 'genero_id': genero_id, })
    return render(request, 'indexGrupos.html', {'grupos': grupos_page, 'provincia': provincia, 'generos': generos, 'search': search, 'genero_id': genero_id, 'provincia_id': provincia_id, 'busqueda': busqueda})
def detail(request,pk):
    grupo = UserProfileMusicos.objects.get(id=pk)
    generos= Generos.objects.filter(userprofilemusicos=grupo.id)
    audios= Audios.objects.filter(userprofilemusicos=grupo.id)
    videos= Videos.objects.filter(userprofilemusicos=grupo.id)
    noticias=Noticias.objects.filter(userprofilemusicos=grupo.id)
    return render(request,'detail_grupo.html',{'grupo':grupo,'generos':generos,'audios':audios,'videos':videos,'noticias':noticias,'pk':pk})

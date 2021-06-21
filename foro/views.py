from django.core.paginator import Paginator
from django.shortcuts import redirect, render
from .models import Mensajes_post, Post, Tema_foro

# Create your views here.
def index_foro(request):    

    temas=Tema_foro.objects.all().order_by('id')    
    return render(request, 'index_foro.html',{'temas':temas})



def post(request,pk):    
    tema=Tema_foro.objects.get(id=pk)
    logueado=False
    if request.method=='POST':
        titulo=request.POST['title']
        text=request.POST['text']

        post=Post.objects.create(title=titulo,descripcion=text,autor_post=request.user)
        tema.post_foro.add(post)
        
        return redirect('foro:post',pk)

    """ paginator = Paginator(tema.post_foro.all(), 5)   

    page_number = request.GET.get('page')
    tema_page = paginator.get_page(page_number) """
    if request.user.is_authenticated:
        logueado=True
    else:
        logueado=False

    
    return render(request, 'post_choose.html',{'tema':tema,'logueado':logueado})

def post_mensajes(request,pk):    
    post=Post.objects.get(id=pk)
    logueado=False
    if request.method=='POST':
        titulo=request.POST['title']
        text=request.POST['text']

        mensaje=Mensajes_post.objects.create(title=titulo,descripcion=text,autor_mensaje=request.user)
        post.mensajes_post.add(mensaje)
        
        return redirect('foro:post_mensajes',pk)

    """ paginator = Paginator(post.mensajes_post.all(), 5)   

    page_number = request.GET.get('page')
    post_page = paginator.get_page(page_number)
    """
    if request.user.is_authenticated:
        logueado=True
    else:
        logueado=False
    return render(request, 'mensajes_foro.html',{'post':post,'logueado':logueado})
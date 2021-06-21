from django.contrib.auth.models import User
# Login vía email
class AuthByEmailBackend:
    def authenticate(self,request,username=None,password=None):
        try:
            user=User.objects.get(email=username)
            if user.check_password(password):
                return user
        except User.DoesNotExist:
            return None
    def get_user(slf,user_id):
        try:
            return User.objects.get(pk=user_id)
            
        except User.DoesNotExist:
            return None

"""             html_message = loader.render_to_string(
                 'email/comment.html', {'comment': comment})

             request.session['comment_id'] = comment.id

             send_mail(
                 # "Título",
                 "Comentario #"+str(comment.id),
                 comment.text,
                 #"Contenido del mail",
                 "correo@mariodev.com",
                 ['marioosuna26@gmail.com'],
                 fail_silently=False,
                 #html_message="<h1>Hola mundo</h1>"
                 html_message=html_message
             ) """

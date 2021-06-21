from django.forms.widgets import ClearableFileInput
from .models import Audios, UserProfileMusicos,UserProfileOjeadores
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from django.core.files.images import get_image_dimensions
from django.utils.translation import gettext as _

class CustomClearableFileInput(ClearableFileInput):
    
    template_with_clear = '<br>  <label for="%(clear_checkbox_id)s">%(clear_checkbox_label)s</label> %(clear)s'

class FormEntrada(forms.ModelForm):
    class Meta:
        model = Audios
        fields = ('title', 'url_audio')
        widgets = {
            'url_audio': CustomClearableFileInput
        }

class UserUpdateForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('username','email',)
        
    

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        u = User.objects.filter(email=email)
        if u.count():
            raise ValidationError(_('Email taking'))#"Email ya está registrado"
        return email

    """ def save(self, commit=True, text=""):
        instance = super(UserUpdateForm, self).save(commit=commit)

        if(text != ""):
            instance.text = text  # "No podrás modificarme"

        if(commit):
            instance.save()
        return instance """



class CustomUserCreationForm(UserCreationForm):
    email = forms.EmailField(
        label='Email',
        max_length=50,
        help_text=_('Put your favorite emal'),#'Coloca tu email de preferencia.'
        error_messages={
            'invalid': 'Solamente puedes colocar caracteres válidos'})

    def clean_email(self):
        email = self.cleaned_data['email'].lower()
        u = User.objects.filter(email=email)
        if u.count():
            raise ValidationError(_('Email taking'))#"Email ya está registrado"
        return email

    def save(self, commit=True):
        user = User.objects.create_user(
            self.cleaned_data['username'],
            self.cleaned_data['email'],
            self.cleaned_data['password1']
        )
        return user


class UserProfileForm(forms.ModelForm):
    class Meta:
        model = UserProfileMusicos
        fields = ('avatar', 'user')

    def __init__(self, *args, **kwargs):
        super(UserProfileForm, self).__init__(*args, **kwargs)
        self.fields['user'].widget = forms.HiddenInput()
        self.fields['user'].required = False
        self.fields['avatar'].widget.attrs['class'] = 'custom-file-input'
        self.fields['avatar'].widget.attrs['id'] = 'customFile'

    def clean_avatar(self):
        avatar = self.cleaned_data['avatar']

        # Validación por tamaño de la img
        w, h = get_image_dimensions(avatar)
        max_width = max_height = 750
        if w > max_width or h > max_height:
            raise forms.ValidationError(
                "Imagen muy grande, la imagen no puede superar las %s px, %s px" % (max_width, max_height))
        
        # Extension
        # print("avatar:"+str(avatar.content_type))
        m, t = avatar.content_type.split('/')

        if not(m == 'image' and t in ['jpg', 'jpeg', 'png', 'gif']):
            raise forms.ValidationError(
                "Imagen no soportada, extensiones validas: 'jpg','jpeg','png','gif'")
        # tamaño de la img

        if len(avatar) > (30*1024):
            raise forms.ValidationError(
                "Imagen no puede superar los 30kb") 
        return avatar

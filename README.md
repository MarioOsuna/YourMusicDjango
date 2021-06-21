# Your Music


## Descripción del proyecto

Proyecto que pretende facilitar la gestión de un grupo de música permitiendo que este entre en contacto tanto
con personas interesadas en su contratación como con medios de prensa y discográficas en una plataforma
específica para este perfil de usuarios.

Se trata de un proyecto importante pues actualmente cuesta mucho trabajo para un grupo, sobre todo si está
empezando, poder conocer y contactar a los distintos medios de prensa y promotores.
Con este portal conseguiría poder estar en contacto con medios de prensa para hacerles llegar sus noticias,
mandarle información a promotores y discográficas de una forma sencilla.
En cuanto a los ojeadores particulares, sería para ellos una gran base de datos que les permitiría contactar con
grupos para sus eventos (los particulares por ejemplo para bodas, fiestas privadas, etc) y las empresas, para
actuar en sus salas de conciertos, bares, etc.



## Información sobre despliegue

Manual de despliegue del proyecto para su correcto funcionamiento

### Indice de contenidos

1. Recursos para el despliegue
2. Instalación y preparación del servidor
3. Instalar Django
4. Módulo wsgi
5. Últimos pasos

### Recursos para el despliegue

Para implantar la aplicación en un servidor y ponerlo en funcionamiento se necesita de un servidor, conexión con internet, un subdominio para poder conectarnos al servidor, aplicaciones para conectarnos con el servidor como puede ser Putty, filezilla y por último el proyecto para subir al servidor.

### Instalación y preparación del servidor

Lo primero que se debe hacer es acceder al servidor e instalar [Apache2](https://www.digitalocean.com/community/tutorials/how-to-install-the-apache-web-server-on-ubuntu-20-04-es) y poner en funcionamiento un hosting para poder conectarnos al mismo.

Una vez tengamos apache en funcionamiento lo siguiente será instalar [mysql](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04-es) y [PhpMyAdmin](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-phpmyadmin-on-ubuntu-20-04-es) para manejar la DB.

### Instalación de django

Ahora se ha de instalar python y django y crear un entorno virtual. [Django](https://www.digitalocean.com/community/tutorials/como-instalar-el-framework-web-django-en-ubuntu-18-04-es) Cuando tengamos instalado todo lo necesario crearemos un entorno virtual como en el tutorial pero dentro de la carpeta /var/www/ y lo llamaremos entorno.

Después de esto desplegamos el proyecto en el servidor para ello se puede hacer por ejemplo clonando el repositorio con git clone, en este caso se hará en la ruta /var/www/entorno/

### Instalación del módulo wsgi y configuración

Lo siguiente será instalar el módulo [wsgi](http://blog.enriqueoriol.com/2014/06/lanzando-django-en-produccion-con.html) en django, lo siguiente será modificar el host virtual de la siguiente manera:


        ServerName yourmusic.iesgrancapitan.org
        DocumentRoot /var/www/entorno/proyecto/
        WSGIScriptAlias / /var/www/entorno/proyecto/YourMusic/wsgi.py

        WSGIDaemonProcess yourmusic.iesgrancapitan.org python-path=/var/www/entorno>

        WSGIProcessGroup yourmusic.iesgrancapitan.org

        <Directory /var/www/entorno/proyecto/YourMusic/>
            <Files wsgi.py>
              Require all granted
            </Files>
        </Directory>

        Alias /static/ /var/www/entorno/proyecto/static/

         <Directory /var/www/entorno/proyecto/static/>
            Require all granted
         </Directory>

### Últimos pasos 
Una vez realizado todo lo anterior será necesario dar permisos de escritura a la carpeta a la que se quiera subir imágenes en este caso la carpeta static y por último indicar en el setting del proyecto los datos para acceder a la DB.


## Información sobre cómo usarlo


Manual de usuario del proyecto para el correcto uso del mismo 

### Indice de contenidos

1. Perfiles
2. Motor de búsqueda
3. Noticias
4. Foro
5. Mensajería
6. Otros


### perfiles

Dentro del proyecto se pueden encontrar diversos tipos de perfiles, el primero de todos es el perfil invitado que no necesita de ningún tipo de inicio de sesión, este perfil puede buscar grupos u ojeadores, ver noticias y ver el foro.
Si este usuario se ha registrado como un simple usuario sin elegir un perfil entre los dos que se pueden seleccionar, aparte de lo que ofrece un usuario invitado podrá participar en el foro. Por otro lado si ya desea entablar contacto con otros perfiles, registrar su grupo o negocio debe seleccionar entre dos de los siguientes perfiles:
* **Músicos** - 
Se trata de un perfil destinado a los grupos o simplemente músicos con el objetivo de darse a conocer, ofrece a diferencia de otros perfiles la posibilidades de contactar con otros perfiles, darse a conocer mediante una ficha detallada, colgar noticias, además de las posibilidades de los perfiles anteriores 
* **Ojeadores** - 
Se trata de un perfil destinado a los ojeadores, es decir personas que buscan un grupo, para contratar, escuchar etc... dentro de este perfil destacan varios tipos como particulares, bares, discográficas, salas de concierto o prensa. Se trata de un perfil similar al de músicos, con el mismo tipo de permisos, está creado con el objetivo de poder dividir a los usuarios según la necesidad de estos

### motor

Uno de los primeros incentivos para los usuarios registrados o no es la posibilidad de buscar según las necesidades que tenga el usuario. Mediante un motor de búsqueda completo. Destaca por la posibilidad de buscar por nombre, géneros de música y lugar (provincia), tanto para músicos como para ojeadores, si la base de datos no fuera lo suficientemente extensa y fuera necesario algo más para poder encontrar lo que busca el usuario se ofrece la posibilidad de poder comunicarse mediante un [Foro](#Foro)

### Noticias
Apartado dedicado a listar todas las noticias creadas en la web independientemente de músicos y ojeadores, listando desde la fecha más reciente de edición o creación de la noticia a la más antigua. Con la posibilidad de visualizar esa única noticia y acceder al perfil del grupo u ojeador que ha creado la noticia. Se trata de un apartado de libre acceso sin necesidad de estar registrado para poder visualizarlo

### Mensajería

Para facilitar el contacto entre los usuarios, una de las posibilidades que ofrece es un espacio para la mensajería privada entre usuarios.
A través de la página de detalle de un grupo/ojeador, cualquier usuario registrado y con perfil definido puede establecer contacto con cualquier de estos perfiles, sin un número limitado de chats, mensajes etc...

### Foro

Basándonos en los clásicos foros que siempre han existido por internet, hemos querido ofrecer algo similar para permitir a los usuarios la posibilidad de que dejen un mensaje a la comunidad y si por ellos solos no pueden encontrar lo que buscan, los usuarios que coincidan con lo que buscan podrán ponerse en contacto mediante el foro creado por el usuario. La ventaja que ofrece el foro es que si no deseas darte de alta como grupo u ojeador, solo con registrarte con tus datos básicos podrás acceder al foro. Pero para obtener todas las ventajas lo más recomendable es definir un tipo de perfil para ayudar a los demás usuarios a encontrar lo que buscan.

### Otros 

Aparte de las secciones y posibilidades mencionadas en los apartados anteriores, una cosa que ofrece prácticamente por cada sección menos el foro, es la posibilidad de editar y eliminar, desde el perfil hasta mensajes, noticias, etc...
Pudiendo modificar toda la información menos el nombre de usuario

## Autores
Proyecto Integrado _Your Music_ de _2 DAW_ del [IES Gran Capitan](https://informatica.iesgrancapitan.org) 
- [@MarioOsuna](http://www.github.com/MarioOsuna)
- [@ManuelHidalgo](http://www.github.com/hipema)

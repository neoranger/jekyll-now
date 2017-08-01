---
layout: post
title: Tu propia nube privada con ownCloud y RaspberryPi
date: 2016-09-16
author: neoranger
comments: true
categories: [RaspberryPi]
---
Muchas veces estamos reacios a querer guardar nuestros datos personales y cosas que nos importan en servidores externos, incluso le tenemos cierta desconfianza a servicios conocidos como Dropbox o Google Drive.

Una solución es ownCloud, un servicio muy similar a Dropbox o Google Drive pero con una gran ventaja. Nuestros datos son nuestros y los tenemos alojados en nuestro propio servidor con un nivel de seguridad muy alto. Y claro, RaspberryPi de por medio.

Algunas funciones de ownCloud:
-Sincronización de archivos entre diversos dispositivos
-Almacenamiento seguro (cifrado de archivos)
- Compartimiento de archivos entre usuarios o de una manera pública
- Lector de música en línea
-Servidor de archivos WebDAV
- Calendario (permite la sincronización CalDAV)
- Administración de contactos (CardDAV)
- Editor de texto en línea (propone la coloración sintactica)
- Visor de documentos en línea (pdf, open document)
- Galería de imágenes, que permite la visualización y la clasificación en álbumes
- Administración de favoritos

Algunas cosas que necesitamos para poder usar ownCloud:

<ul>
    <li>Base de Datos:
<ul>
    <li>PostgreSQL</li>
    <li>SQLite</li>
    <li>MariaDB</li>
    <li>MySQL</li>
</ul>
</li>
    <li>Apache (es instalado automáticamente cuando instalamos ownCloud)</li>
    <li>PHP (5.6 en este caso)</li>
</ul>

En el caso de que solo quieras probar hacer esto, ya que instala varias cosas que quizás no quieras en tu RaspberryPi, te recomiendo hacer esto con un sistema instalado de cero, es decir con un Raspbian recién instalado en una microSD que tengas libre.

Empecemos:

Descargamos ownCloud de la <a href="https://download.owncloud.org/download/repositories/stable/owncloud/">Página Oficial</a> y seleccionamos como sistema a Debian:
<a href="http://www.neositelinux.com.ar/wp-content/uploads/2016/07/tuto_owncloud_1.png"><img class=" wp-image-1549 aligncenter" src="http://www.neositelinux.com.ar/wp-content/uploads/2016/07/tuto_owncloud_1-300x123.png" alt="tuto_owncloud_1" width="378" height="155" /></a>

Nos dará algunas opciones que tenemos que llevar adelante para poder instalar:
Descargar la key y agregarla:

<blockquote>$ wget -nv https://download.owncloud.org/download/repositories/stable/Debian_8.0/Release.key -O Release.key

$ apt-key add - &lt; Release.key</blockquote>

Como root agregamos el repositorio, actualizamos los repos e instalamos ownCloud:

<blockquote># sh -c "echo 'deb http://download.owncloud.org/download/repositories/stable/Debian_8.0/ /' &gt;&gt; /etc/apt/sources.list.d/owncloud.list"
# apt-get update
# apt-get install owncloud</blockquote>

Una vez instalado owncloud se generará una carpeta de nombre "owncloud" en el directorio /var/www/

<strong>NOTA: Si queremos cambiar de ruta este directorio, lo mejor es generando un enlace simbólico a donde querramos. Por ejemplo si queremos cambiarlo a /media/server debemos hacer:</strong>

<blockquote>sudo ln -s /var/www/owncloud /media/server</blockquote>

<strong>Configuración del Server Apache:</strong>

Vamos a editar la configuración de Apache para cambiar la ruta hacia el directorio de ownCloud escribiendo lo siguiente:

<blockquote>sudo nano /etc/apache2/sites-available/000-default.conf</blockquote>

Buscamos la linea: "<strong>DocumentRoot /var/www/html"</strong> y vamos a modificarlo por el directorio de ownCloud: "<strong>DocumentRoot /var/www/owncloud</strong>"

También vamos a buscar la linea: <strong>#ServerName <a class="postlink" href="http://www.example.com/">http://www.example.com</a></strong> y lo vamos a modificar por el dominio que tengamos registrados (si es que tenemos uno, por ejemplo, en no-ip) o por la IP local que tengamos en la RaspberryPi en el caso de que querramos la nube solo de manera local.

<img class="img-post" src="https://www.fororaspberry.es/download/file.php?id=82" alt="13.png" />

&nbsp;

<strong>Configurando PHP para ownCloud:
</strong>
Para que todo funcione sin problemas vamos a editar el archivo .htaccess

<blockquote>sudo nano /var/www/owncloud/.htaccess</blockquote>

Una vez dentro, buscaremos los siguientes parámetros

<strong>( DENTRO DE LA FRANJA &lt;IfModule mod_php5.c&gt; )</strong>

Por defecto:

<blockquote class="uncited">php_value upload_max_filesize 513M</blockquote>

Aqui ponemos el tamaño máximo del archivo en "MB" , que podremos subir a nuestro servidor OwnCloud, ejemplo

<blockquote class="uncited">php_value upload_max_filesize = 20000M</blockquote>

Serian 20000MB=20GB

Por defecto:

<blockquote class="uncited">php_value post_max_size 513M</blockquote>

Aqui por igual, ponemos el tamaño máximo del archivo en "MB" , que podremos subir a nuestro servidor OwnCloud

<blockquote class="uncited">php_value post_max_size 20000M</blockquote>

Serian 20000MB=20GB

Nuestra configuración quedaria asi:

<div class="inline-attachment">
<div class="file">
<div class="attach-image"><img class="img-post" src="https://www.fororaspberry.es/download/file.php?id=83" alt="14.png" /></div>
<small><i class="fa fa-eye"></i> 14.png (4.17 KiB) Visto 317 veces</small></div>
</div>

<strong>Una vez añadido,guardaremos los cambios del archivo pulsando estas teclas, en este caso (putty ssh)</strong>
<em>Control + X
tecleamos Y
ENTER</em>

Y reiniciaremos para aplicar la configuración al servidor Apache con:

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>sudo service apache2 restart</code></div>

Ahora simplemente con poner la dirección IP de nuestra Pi en el navegador web, deberia acceder al panel OwnCloud <img class="smilies" title="Tambor" src="https://www.fororaspberry.es/images/smilies/onion33.gif" alt=":tambor" />
Ejemplo:

<blockquote class="uncited">http://192.168.1.30</blockquote>

&nbsp;

<div class="inline-attachment">
<div class="thumbnail">
<div><a href="https://www.fororaspberry.es/download/file.php?id=84&amp;mode=view"><img class="img-post" title="3.png (63.07 KiB) Visto 317 veces" src="https://www.fororaspberry.es/download/file.php?id=84&amp;t=1" alt="3.png" /></a></div>
</div>
</div>

¿Ya esta? Que facil!! Todavia no... <img class="smilies" title="En Blanco" src="https://www.fororaspberry.es/images/smilies/onion15.gif" alt=":enblanco" /> , ahora debemos <strong>tener instalado MYSQL</strong> , y <strong>crear una base de datos</strong> para funcionar. <img class="smilies" title="Twisted Evil" src="https://www.fororaspberry.es/images/smilies/icon_twisted.gif" alt=":twisted:" />

<strong>Creando Base de Datos SQL para OwnCloud:</strong>

Si no lo has hecho anteriormente, hay que seguir este tutorial:
<a class="postlink" href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=157">&gt;&gt;Instalando y Configurando Bases de Datos MYSQL&lt;&lt;</a>

Una vez tenemos MYSQL instalado, entraremos al panel MYSQL para crear una Base de Datos y un usuario y contraseña con

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>mysql -u root -p</code></div>

Por Poner un ejemplo, tenemos que crear los siguientes datos:[/b]
<strong>Nombre Base de datos:<em> miowncloud</em>
Usuario afiliado a la base de datos: <em>kike</em>
Contraseña del usuario: <em>micontraseña1234</em></strong>

Creando Base de Datos:

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>create database miowncloud;</code></div>

Creando Usuario:

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>create user kike@localhost identified by 'micontraseña1234';</code></div>

Dando Privilegios al usuario para que pueda acceder a la Base de Datos:

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>grant all privileges on miowncloud.* to kike@localhost identified by 'micontraseña1234';</code></div>

Y por último para salir del panel MYSQL:

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>q</code></div>

Ahora una vez creada nuestra base de datos, entraremos de nuevo al navegador Web, poniendo la dirección IP de nuestra PI:
Ejemplo:

<blockquote class="uncited">http://192.168.1.30</blockquote>

Aqui ponemos nuestro Usuario y Contraseña que utilizaremos para entrar en nuestro OwnCloud
Y a continuación damos click en "ALMACENAMIENTO Y BASES DE DATOS" tal y como marco en la imagen.

<div class="inline-attachment">
<div class="thumbnail">
<div><a href="https://www.fororaspberry.es/download/file.php?id=85&amp;mode=view"><img class="img-post" title="15.png (103.85 KiB) Visto 296 veces" src="https://www.fororaspberry.es/download/file.php?id=85&amp;t=1" alt="15.png" /></a></div>
</div>
</div>

Nos saldra lo siguiente

<div class="inline-attachment">
<div class="file">
<div class="attach-image"><img class="img-post" src="https://www.fororaspberry.es/download/file.php?id=86" alt="16.png" /></div>
<small><i class="fa fa-eye"></i> 16.png (8.11 KiB) Visto 296 veces</small></div>
</div>

Debajo de "Configurar Base de Datos" seleccionamos MySQL / MariaDB

En Directorio de datos, <strong>seleccionamos la carpeta donde queremos guardar todos nuestros archivos ,por defecto</strong>

<div class="codebox">CÓDIGO: <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219&amp;sid=d15d2d23fcd1e421ce76511a992a9490#">SELECCIONAR TODO</a><code>/var/www/owncloud/data</code></div>

&nbsp;

<blockquote class="uncited">Si queremos guardar los datos en un disco duro, dirigimos la ruta hacia la carpeta automontada del disco, ejemplo /media/disco1</blockquote>

Ahora añadir los datos a medida de lo que hayais creado con el MYSQL
Usuario Base de datos:

<blockquote class="uncited">kike</blockquote>

Contraseña de la Base de Datos:

<blockquote class="uncited">micontraseña1234</blockquote>

Nombre de la Base de Datos:

<blockquote class="uncited">miowncloud</blockquote>

Host de la Base de Datos (dejar<strong> LOCALHOST</strong> por defecto):

<blockquote class="uncited">localhost</blockquote>

<strong>Apretamos en "Completar la instalación" , esperamos unos minutos que se creen las tablas y accederemos automaticamente a nuestro Owncloud!!</strong>

<div class="inline-attachment">
<div class="file">
<div class="attach-image"><img class="img-post" src="https://www.fororaspberry.es/download/file.php?id=87" alt="17.png" /></div>
</div>
</div>

Info sacada de: https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219

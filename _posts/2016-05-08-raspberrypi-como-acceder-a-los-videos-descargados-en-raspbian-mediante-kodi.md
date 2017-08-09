---
layout: post
title: "Como acceder a los videos descargados en Raspbian mediante Kodi"
date: 2016-05-08
author: neoranger
comments: true
categories: [Aporte, RaspberryPi]
---
<img class="  wp-image-2723 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/raspberry-pi-logo.jpg" alt="raspberry-pi-logo" width="514" height="257" />

En la entrada anterior, les mostraba <a href="http://www.neositelinux.com.ar/2016/05/04/raspberrypi-como-crear-un-servidor-torrent-en-raspbian/">como armar un servidor torrent con nuestra RaspberryPi</a>, gracias a esto podemos tener todas nuestras series y películas concentradas y resguardadas en un solo lugar.
Con la RaspberryPi de por medio podemos llegar usando KODI (software para centro multimedia, antiguamente conocido como XBMC) desde cualquier equipo reproduciendo nuestras películas y series de forma remota sin tener que estar cambiando de equipo o de disco duro en disco duro.

Para poder hacer esto y para que ande en todos los equipos, incluyendo nuestro movil con Android, vamos a instalar Samba en nuestra RaspberryPi.
Samba es una implementación libre del protocolo de archivos compartidos de Microsoft Windows (antiguamente llamado SMB, renombrado recientemente a CIFS) para sistemas de tipo UNIX. De esta forma, es posible que computadoras con GNU/Linux, Mac OS X o Unix en general se vean como servidores o actúen como clientes en redes de Windows. Por este motivo es mejor usar Samba ya que cualquier persona en la casa que tenga el sistema operativo que quiera, pueda acceder al contenido descargado en nuestro servidor recientemente creado.

Vamos a instalar Samba en nuestra RaspberryPi, para ello usaremos el comando:

`sudo apt-get install samba samba-common-bin`

Ahora, vamos a hacer un backup de la configuración original de Samba, por si rompemos algo, la tenemos para volver todo a la normalidad (tranquilos, es solo por precaución, no es nada dificil configurarlo):

`sudo cp /etc/samba/samba.conf smb.old`

Con la configuración original guardada, vamos a editar el archivo de configuración:

`sudo nano -w /etc/samba/samba.conf`

Nos movemos al final del archivo y lo que vamos a hacer es agregar un perfil el cual será la carpeta que vea el equipo que se quiera conectar, dándole una serie de parámetros:

```
[pi pendrive] - el nombre que tendrá la carpeta cuando la busquemos en samba
comment = USB share - comentario acerca de la carpeta
path = /media/pendrive - directorio el cual se abrirá cuando accedamos
writeable = Yes - parámetro para hacer
create mask = 0777 - permisos de la carpeta
directory mask = 0777 - permisos del directorio montado
browseable = Yes - hacemos que se pueda usar para buscar
valid users @users - lo hacemos válido para el grupo de usuarios corrientes
force user = pi - forzamos el login con el usuario por defecto (pi)
```

Con el perfil configurado, vamos ahora a crear una contraseña para el usuario pi el cual nos pedirá una vez que nos querramos conectar via el explorador de archivos:

`sudo smbpasswd -a pi`

Y listo, lo que falta hacer ahora es solo reiniciar el servicio de Samba para que tome la nueva configuración haciendo lo siguiente:

`sudo /etc/init.d/samba restart`

Ahora, vamos a usar Nautilus para conectarnos al servidor y ver nuestro contenido de la RaspberryPi en un carpeta común pero de forma remota. Hacemos click en "Conectarse a un servidor" en la columna izquierda de Nautilus. Samba nos pedirá la dirección del servidor a la que nos querramos conectar. En este caso sería algo parecido a:

`smb://192.168.1.XX  - donde XX es el numero que le asignamos de forma estática a la RaspberryPi`

<img class="alignnone size-full wp-image-2745" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf1.png" alt="samba_conf1" width="765" height="553" />

Una vez hecha la conexión nos pedirá el usuario y password del servidor. El usuario es el que tenemos en nuestra RasperryPi y la password es la que hemos configurado en Samba. Y listo, veremos la carpeta configurada para poder accederla de forma remota sin problemas.

<img class="alignnone size-full wp-image-2748" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf2.png" alt="samba_conf2" width="767" height="555" />

Si quieren chequear que esté todo bien, pueden entrar de forma "gráfica" a la carpeta de nuestro servidor y desde a consola para verificar que todo está bien.

<img class="alignnone size-full wp-image-2753" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf3.png" alt="samba_conf3" width="1366" height="768" />

Ahora podemos ver nuestras series y peliculas (y todo lo que tengamos en nuestro servidor) sin problemas. Si es una imagen o video podemos verla directamente mediante nuestro reproductor preferido de video si es que hicimos este úlitmo paso ya que tendremos una carpeta agregada y se puede usar como cualquier directorio.
Pero también podemos usar KODI como reproductor, y eso es el último paso que nos queda por hacer.

Con Kodi instalado en el equipos que querramos vamos a abrir la aplicación e iremos al apartado de Videos -> Archivos -> Añadir Videos... -> Buscar

<img class="alignnone size-full wp-image-2758" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf4.png" alt="samba_conf4" width="1366" height="768" />

<img class="alignnone size-full wp-image-2763" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf5.png" alt="samba_conf5" width="1366" height="768" />

Una vez que lleguemos a esa parte, iremos al apartado "Red Windows (SMB)". Haciendo esto KODI automáticamente nos encontrará los equipos que estén conectados en Samba. Buscamos nuestra RaspberryPi llegando hasta el directorio de los torrents descargados (se acuerdan? El directorio /finish que habíamos configurado).

<img class="alignnone size-full wp-image-2768" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf6.png" alt="samba_conf6" width="1366" height="768" />

Ahora solo resta darle un nombre para que podamos identificar nuestra RaspberryPi en KODI, darle nuestro user y pass (de samba) que hemos configurado y listo!!

<img class="alignnone size-full wp-image-2778" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_config7.png" alt="samba_config7" width="1366" height="768" />

Ahora podremos ver los videos descargados de nuestro servidor torrent creado en nuestra RaspberryPi en cualquier equipo, siempre y cuando hayamos hecho esta configuración ya que la misma es de manera local. Incluso podemos hacer esta configuración en nuestro movil Android!! Solo hay que descargarse KODI en su celular y hacer la misma configuración.

<img class="alignnone size-full wp-image-2773" src="https://blogneositelinux.files.wordpress.com/2016/10/samba_conf8.png" alt="samba_conf8" width="1366" height="768" />

Si tienen alguna duda o he omitido algo o incluso quieren dar su experiencia personal, no duden en escribir un comentario abajo o si quieren pueden mandarme un email a neoranger@openmailbox.org

Experiencia personal: He configurado el server tanto en Samba como por SFTP (secure FTP) y el protocolo Samba fue más estable que el SFTP, incluso hacer un mejor buffer para los videos de alta calidad.

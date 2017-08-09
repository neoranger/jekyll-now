---
layout: post
title: "Quitar modo mantenimiento de OwnCloud"
date: 2016-07-21
author: neoranger
comments: true
categories: [RaspberryPi]
---
<img class="  wp-image-2688 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/owncloud_logo.png" alt="owncloud_logo" width="480" height="237" />

Que tal amigos? Les traigo una info que se me hizo super útil a la hora de crear mi nube personal con OwnCloud en mi RaspberryPi.

Resulta que ayer se me actualizó OwnCloud a una nueva versión y al querer accederla me salía el siguiente texto:

<img class="  wp-image-2679 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/owncloud1.png" alt="owncloud1" width="577" height="370" />

```
"Está instancia ownCloud está en modo mantenimiento, por lo que puede llevar un tiempo.
La página se refrescará cuando la instalación ownCloud vuelva a estar disponible.
Contacte con su administrador de sistemas si este mensaje persiste o aparece de forma inesperada.
Gracias por su paciencia."
```

Resulta que al actualizarse la aplicación la misma se pone en modo de mantenimiento haciendo que no se pueda acceder sino que salga esa leyenda sin poder tener acceso a nuestros documentos. La solución es fácil, ingresamos primero al directorio de OwnCloud:

`cd /var/www/owncloud`

Una vez adentro del directorio de configuración de OwnCloud, apagamos el modo mantenimiento:

`sudo -u www-data php occ maintenance:mode --off`

Una vez hecho esto nos saldrá la leyenda de que vayamos a nuestra nube desde el navegador y que apliquemos la actualización descargada.

<img class=" size-full wp-image-2683 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/owncloud2.png" alt="owncloud2" width="796" height="56" />

Ingresamos a nuestra nube con la IP que tengamos y hacemos click en el botón **"Start Update"** y listo. La actualización se aplicará y vamos a tener disponible nuevamente nuestra nube.

No sabés como crear tu propia nube ownCloud en la RaspberryPi? Te sugiero que te pases por el post de la gente de ForoRaspberry.es haciendo click <a href="https://www.fororaspberry.es/viewtopic.php?f=6&amp;t=219">ACA</a>. Mi idea era hacer un post sobre esto pero en ese link está muy bien explicado y sería de gusto tener repetida la información.

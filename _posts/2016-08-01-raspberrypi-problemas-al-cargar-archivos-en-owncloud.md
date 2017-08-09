---
layout: post
title: "Problemas al cargar archivos en ownCloud"
date: 2016-08-01
author: neoranger
comments: true
categories: [RaspberryPi]
---
<img class="  wp-image-2688 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/owncloud_logo.png" alt="owncloud_logo" width="445" height="220" />

Terminando de armar mi nube personal me encuentro con un error que no me esperaba. Al querer cargar archivo me sale un error diciendo que no tengo espacio cuando se quiere hacer la carga.

Buscando y preguntando a usuarios de RaspberryPi me comentan que el error se debe a que el directorio temporal de ownCloud puede ser que esté en un directorio donde no hay mucho espacio para hacer una carga grande o directamente el directorio no exista. Para solucionarlo tenemos que hacer lo siguiente:

Editamos el archivo php.ini en el directorio /etc/php5/apache2/

`cd /etc/php5/apache2/`

`sudo nano(o el editor de texto que usen) php.ini`

Buscamos la linea la cual contiene la variable upload_tmp_dir. Si está comentada la descomentamos y la llenamos con el directorio que querramos que sea el temporal. No recomiendo que sea en la misma microSD donde está el sistema porque es probable que se llene rápido, por eso yo decidí usar el mismo disco que tengo configurado para la nube, como directorio temporal de la siguiente manera:

`upload_tmp_dir = /media/owncloud/tmp/`

Con eso hacemos que el directorio temporal tenga mucho espacio para usar y no de error las cargas a la nube.

Una vez que guardamos los cambios (en el editor de textos que hayan usado) hechos debemos reiniciar el servicio de Apache para que todo funcione correctamente:

`sudo service apache2 restart`

Y listo, hemos resuelto el problema de carga de archivos a la nube.

Saludos!

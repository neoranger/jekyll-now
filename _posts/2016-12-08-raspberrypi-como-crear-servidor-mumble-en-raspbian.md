---
layout: post
title: "Como crear servidor Mumble en Raspbian"
date: 2016-12-08
author: neoranger
comments: true
categories: [RaspberryPi]
---
Si bien éste tutorial se puede encontrar en varios sitios, quiero dejarlo plasmado en el blog para tenerlo presente y cuando lo necesite pueda venir a mirarlo acá en vez de en otra web, jejeje.

Lo que vamos a hacer es instalar mumble como servidor y configurarlo con canales para dejarlo listo para usar.

Primero que nada vamos a pasarnos al usuario root para no tener que estar escribiendo "sudo" todo el tiempo ya que esto se hace todo con permisos de superusuario:

`sudo su`

Ahora vamos a instalar el servidor. Si bien en Raspbian (Debian) el paquete se llama "mumble-server", en la mayoría de las distros se llama "murmur" como realmente se llama el servidor.

`apt-get install mumble-server`

Ahora vamos a ejecutar la configuración del servidor para dejarlo a punto.

`dpkg-reconfigure mumble-server`

Vamos a encontrarnos con ésta pantalla la cual nos pregunta si queremos ejecutar el servidor al encender el equipo. Conviene ponerle que Si para que no estemos levantando el server de manera manual, a menos que querramos hacerlo.

<img class="  wp-image-3714 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/mumble_server1.png?w=680" alt="mumble_server1" width="600" height="444" />

Ahora nos preguntará por la prioridad que le queremos dar al servidor para que podamos hablar a pesar de que el sistema esté haciendo algo importante.

<img class="  wp-image-3715 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/mumble_server2.png?w=680" alt="mumble_server2" width="600" height="444" />

Por último vamos a configurar la contraseña del usuario SuperUser el cual sirve para configurar los canales, permisos y demás cosas que tiene el server directamente dentro de Mumble.

<img class="  wp-image-3716 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/mumble_server3.png" alt="mumble_server3" width="600" height="444" />

Y listo, el server está instalado. Ahora vamos a arrancarlo pasándole el parámetro **start**:

`/etc/init.d/mumble-server start`

Para pararlo o reiniciarlo se usan los parámetros **stop** o **restart** respectívamente.

Si nos conectamos como SuperUser vamos a poder modificar el server a nuestro antojo, añadiendo salas, nombrando como administradores a los usuarios que deseemos, incluso dándole permiso a las salas para que solo los usuarios que nosotros querramos puedan entrar.

<img class="  wp-image-3733 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/mumble_server4.png" alt="mumble_server4" width="599" height="479" />

Para editar el mensaje de bienvenida debemos meternos a la config a través de la consola editando el siguiente archivo como root:

`nano /etc/mumble-server.ini`

Ahí podremos darle una password a todo el servidor para hacerlo privado, o cambiar el mensaje de bienvenida editando el parámetro <strong>welcometext</strong> o incluso limitando la cantidad de personas conectadas editando el parámetro **users**.

En fin, se puede customizar a gusto y placer de cada uno. Espero que les sirva y que puedan probar el server y usarlo con sus amigos.

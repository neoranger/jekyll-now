---
layout: post
title: Añadir entrada a nodo GNUSocial desde la terminal en Linux
date: 2015-11-23
author: neoranger
comments: true
categories: [Aporte]
---
<img class="alignnone size-full wp-image-2520" src="https://blogneositelinux.files.wordpress.com/2016/10/gnu-social-logo-svg_.png" alt="gnu-social-logo-svg_" width="800" height="251" />

La semana pasada en uno de los grupo de Telegram donde soy miembro salio nuevamente el tema de GNUSocial, la red social descentralizada, donde cada usuario elige un nodo al cual registrarse y poder contactarse desde ahi. Podes tanto seguir a personas y que te sigan de tu mismo nodo, obviamente, pero tambien se puede con otros nodos, etc.
En esa conversacion salio el tema de buscar si habia un API para GNUSocial, a lo que uno de los usuario del grupo (el amigo <a href="http://quitter.es/kojicomics">@Kojicomics</a>) investigo y llego a la conclusion que con un simple comando podemos añadir una entrada a nuestra cuenta de GNUSocial de una manera muy facil.

El comando es el siguiente:

<blockquote>curl -u <strong>usuario</strong> -d status=<strong>"mensaje"</strong> https://<strong>nodo.gnusocial</strong>/api/statuses/update.xml</blockquote>

Explico el comando:
- Donde dice <strong>usuario</strong> debe ir nuestro usuario de GNUSocial, solamente, sin @ ni nodo ni nada.
- Donde dice "<strong>Mensaje</strong>" tenes que poner el mensaje que deseas enviar a GNUSocial con las doble comillas incluidas, si o si, sino sale error de la API.
- Donde dice <strong>nodo.gnusocial</strong> debe ir el nodo al cual perteneces, por ejemplo, Kojicomics usa quitter.es pero yo uso gnusocial.net . Ahi es a criterio de cada uno, si no lo cambias obviamente te da error.

Eso es todo, una vez que le damos ENTER para mandar la entrada a GNUSocial la API misma nos va a pedir la contraseña para realizar la conexion https y poder enviar el mensaje que hemos escrito, asi que quedate tranquilo que es 100% seguro, si no le das tu contraseña obviamente no va a mandar nada.
Tengan en cuenta que tambien la misma API chequea la longitud del mensaje, por ende, si te pasas de los caracteres que tiene configurado tu nodo, es probable que la API devuelva error.

Podes optimizar el envio creado un script en bash donde como parametro le pases el usuario y el mensaje y que lo mande directamente pero eso es algo que ya esta en tus manos y en tus capacidades si es que sabes hacerlo. Pero quedate tranquilo que @Kojicomics esta trabajando en un proyecto para hacer esto asi que cuando tenga novedades les aviso.

Espero que les haya gustado y que les haya hecho ahorrar un poco de tiempo a la hora de mandar algo rapido via GNUSocial sin tener que estar loguendose o incluso abriendo un navegador para mandar un post.

NOTA: Para que el comando funcione deberas tener instalado curl en tu distribucion GNU/Linux

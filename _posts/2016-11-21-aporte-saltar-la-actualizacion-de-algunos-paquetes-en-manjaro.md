---
layout: post
title: Saltar la actualización de algunos paquetes en Manjaro
date: 2016-11-21
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-3663 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/11/photo_2016-11-21_13-28-42.jpg" alt="photo_2016-11-21_13-28-42" width="472" height="265" />

Hace unos días me instalé el emulador PPSSPP el cual sirve (por si no lo dedujeron) para jugar a juegos de la consola portatil PSP de Sony.

Como hasta el sábado que pasó no tuve tiempo no lo había probado hasta que lo hice y me funcionaba mal.
El problema que tiene el emulador en su versión más reciente, la 1.3-1 es que los juegos que tienen cinemáticas (la mayoría) hacen que el emulador se rompa y no se pueda jugar.

Esto hizo que investigue y en un grupo de Telegram (larga vida a éste mensajero/red social) me pasaron la URL donde están alojados todos los paquetes en sus versiones anteriores para pueda instalar la versión anterior, usar el emulador sin problemas esperando a que salga la nueva versión corregida de la aplicación.

<!--more-->

Dicho y hecho, me bajé la versión anterior, la 1.2.2-1 y con un simple <strong>"sudo pacman -U &lt;paquete&gt;"</strong> instalé el emulador sin problemas.

Ahora, el tema está en que al querer hacer un <strong>"sudo pacman -Syu"</strong> me salta la actualización del PPSSPP a la 1.3.1, que si la aplico vuelvo a tener el problema, entonces lo que decidí es configurar el paquete para ignorarlo. Los pasos son los siguientes:

<ol>
    <li>Editamos el archivo pacman.conf</li>
</ol>

<blockquote><strong>sudo nano /etc/pacman.conf</strong></blockquote>

<ol>
<li>Una vez abierto el archivo vamos a la línea y la descomentamos:</li>
</ol>

<blockquote><strong>IgnorePkg=NombrePaquete</strong></blockquote>

Obviamente donde dice "NombrePaquete" es el nombre que se usa para instalar la aplicación, es éste caso "ppsspp".

Lo que va a hacer esto es que cuando querramos actualizar el sistema, salteamos la actualización de éste paquete sin problemas esperando tranquilos a que salga la actualización que lo arregle. Cuando ocurra, se borra la línea editada y listo.

<img class=" size-full wp-image-3673 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/11/ignorepackage.png" alt="ignorepackage" width="686" height="180" />

<span style="color:#ff0000;"><strong>NOTA: Atención, hacer esto puede generar problemas en el sistema, por lo que se aconseja no hacerlo con paquetes del sistema o aplicaciones importantes donde juega un rol importante en el engranaje del rolling release de Manjaro. Cómo yo estoy haciendo ésto con una aplicación que no toca el sistema e incluso no pertenece a el, ésto se puede hacer sin problemas.</strong></span>

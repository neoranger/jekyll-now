---
layout: post
title: No podés actualizar los repos desde tu red wifi en Ubuntu 14.04?
date: 2015-2-20
author: neoranger
comments: true
categories: [Aporte]
---
Si no podés al igual que yo no podía, este post es para vos. Hace unos días instalé en mi nueva notebook Ubuntu 14.04. Feliz de tunearlo al sistema después de un par de minutos me senté en el sillón y quise hace una actualización de los repos, por ende, del sistema también. Para mi asombro no podía hacer ninguna de las dos cosas por medio de Wifi pero si lo podía hacer si estaba conectado por LAN. Con Wifi tenía navegación correcta y descarga de datos pero solamente eso. Entonces me desesperé.

Había tardado un par de días para instalar Ubuntu en la notebook queriendo hacer un dual boot con Windows 8 lidiando con UEFI, cosa que pude hacer correctamente, pero ahora salía esto.

Empecé a investigar y a preguntar a sol y a sombra para encontrar una solución adecuada. Tener una notebook y no poder actaulizar el sistema si no estoy conectado a una LAN no tenía mucha gracia que digamos.

Me dijeron varias cosas para solucionar esto, se las describo en una lista por si a ustedes le dicen lo mismo:

<ol>
    <li>Actualizar los drivers de la placa Wifi</li>
    <li>Desinstalar y volver a instalar los drivers de la placa</li>
    <li>Actualizar el sistema (en este caso Ubuntu) de la versión 14.04 a la 14.10 por si "la nueva versión trae mejores drivers"</li>
</ol>

Todo esto y otras cosas mas que no me acuerdo ahora, gracias a Dios no lo hice porque la solución es mucho mas fácil.

Mi desesperación me llevó a preguntar en un canal de IRC del server Freenode (canal #gnudeb) donde el amigo Exio4, dueño del canal me tiró un tip muy importante. Cuando le mostré el error que me daba al hacer un "sudo apt-get update" o "sudo apt-get upgrade" desde Wifi (el error decia que era imposible conectarse a esos repos), me dijo la solución.

<blockquote>Es un tema de DNS, poné los de Google y se te soluciona el problema.</blockquote>

Como la solución no afectaba nada del sistema, sino solo a la conexión que justamente andaba mal lo hice y voila!! Se solucionó el problema.
Asi que, si te pasa a mi que no podés actualizar los repos ni el sistema estando en Ubuntu 14.04 por medio de una red wifi, tenés que agregar los DNS de Google a la conexión.

Esto es fácil, vamos al dash y escribimos "red". Vamos a la opción "Conexiones de Red", elejimos nuestra red Wifi y hacemos click en "Editar".
Una vez dentro de la config de la red vamos a la solapa "Ajustes de IPv4" y ponemos los DNS de Google tal cual lo vemos en la imagen.

<img class="  wp-image-2719 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/problemawifi.png" alt="problemawifi" width="549" height="309" />

Guardamos los cambios de la cofiguración y probamos actualizar. Esto es una solución sencilla para este problema, si hay alguno que tiene otra solución o le pasa lo mismo que a mi no dude en comentarnos!

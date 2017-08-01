---
layout: post
title: Crear un usb booteable de Windows desde Linux? Si se puede!
date: 2016-06-08
author: neoranger
comments: true
categories: [Aporte]
---
<img class=" size-full wp-image-2612 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/linux-windows.jpg" alt="linux-windows" width="200" height="213" />

Ayer tuve un inconveniente queriendo crear un usb booteable de Windows. Resulta que mis primos se compraron una PC y tomaron la gran decisión de hacerlo sin que le pongan un sistema operativo pre instalado. Esto, obviamente, hizo que el equipo les salga mucho mas barato que lo normal. Así que me pidieron que les de una mano para armarla, instalarle un sistema operativo y configurar ese sistema para que quede listo para usar.

Obviamente estaba la idea de ponerle alguna distro Linux pero como los chicos son muy jugones y a pesar de ellos son los que mas van a usar la PC y para no tener problemas accedí a le petición de ellos de ponerle Windows.

Ok, hasta ahí todo bien, habia llevado mi laptop en la cual tengo Fedora 23 XFCE y Manjaro XFCE para preparar el usb booteable con Windows. Pero no todo es color de rosas.

Cuando prendí mi laptop y abrí WinUSB para generar el pendrive booteable, esta aplicacion (que hasta donde yo sabia era la unica que existia para hacer esto) me daba error tanto en su GUI como en modo consola. Asi que desesperdamente (y como ya era muy tarde y no estaba en casa como para agarrar la laptop de mi esposa que tiene Windows) pedi ayuda a los amigos del grupo de Telegram "No Solo Linux" (ya se deben dar cuenta de que va el grupo, jejeje) para que me digan si conocian alguna aplicacion o algun metodo por consola para poder generar un usb booteable con Windows desde Linux.

A lo que casi al instante recibi esta respuesta:

<code>https://unetbootin.github.io/linux_download.html</code>

La respuesta solo tenia el link a la web de Unetbootin, una aplicacion muy conocida que tuvo su época de oro cuando servia para poder armar un pendrive booteable de cualquier distro, ahora, al parecer, solo funciona para distros como Debian y derivadas. Pero lo que yo no sabia es que esto no era un chiste (con el perdón del usuario), sino que en la web decía que sirve para crear pendrive booteables de Windows desde Linux.

Como no tenia otra alternativa (para los que no saben el comando dd no funciona y el copiado de la iso dentro del pendrive tampoco), tuve que probar con Unetbootin desde Fedora 23.

Para mi sorpresa resulto y muy bien! Hacia años que no usaba Unetbootin porque la tenia como desprestigiada ya que no es lo que era hace años. Pude instalar Windows 10 en el equipo sin problemas, incluso de manera legal ya que use mi serial personal de Windows 8.1 para que no tengan problemas en cuanto a las actualizaciones de seguridad.

No se si fue un golpe de suerte o que pero Unetbootin funciono e hizo el trabajo que tenia que hacer, algo que yo no tenia ni idea. La version de Windows 10 que funciono fue la Single Lenguage Spanish.

Al parecer tenemos una aplicacion concreta que funciona para crear pendrives booteables de Windows en Linux. Bien por Unetbootin.

<strong>En Fedora:</strong>

<code>sudo dnf install unetbootin</code>

<strong>En Ubuntu y derivadas:</strong>

<code>sudo apt install unetbootin</code>

<strong>Arch y derivadas:</strong>

<code>sudo pacman -S unetbootin</code>

EDITADO el 04/07/2016: Para un resultado mas factible, en Manjaro o derivadas de Arch pueden instalar el paquete de AUR winusb-git, una aplicación especialmente dedicada a crear liveUSB de Windows con la certeza de que funcionará correctamente, no como Unetbootin que tiene todas las garantías de fallar.

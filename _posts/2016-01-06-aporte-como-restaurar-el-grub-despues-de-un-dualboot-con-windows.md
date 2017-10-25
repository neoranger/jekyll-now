---
layout: post
title: "Como restaurar el GRUB despues de un dualboot con Windows"
date: 2016-01-06
author: neoranger
comments: true
categories: [Aporte]
---

<img class="  wp-image-2530 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/grub_archbang.png" alt="grub_archbang" width="369" height="278" />

A raiz de unas conversaciones que tuve en un grupo de Telegram surgio el pedido de un usuario que habia instalado <strong><a href="http://www.deepin.org/">Deepin Linux 15</a></strong> junto con su sistema usual <strong><a href="http://elementary.io/">elementaryOS</a></strong>. Resulta que al parecer Deepin modifico algo en el GRUB y esta persona no podia bootear elementaryOS. Entonces ahi nomas saque mi libreta virtual (Google Keep :P ) y le indique los pasos a seguir para restaurar el GRUB y poder bootear los 2 sistemas.

Entonces me di cuenta que esta informacion no la tenia volcada en el blog asi que voy a pasar a contarles los pasos que esta persona realizo para poder restaurar el GRUB.

Cabe mencionar que esto se puede hacer tanto cuando el GRUB se rompe por haber instalado otro sistema o tambien porque instalaste Windows en dual boot y necesitas, obviamente, bootear los 2 sistemas.

<strong>Aclaracion: Los comandos que vas a ver se escriben SIN las comillas dobles.</strong>

<ol>
    <li>Lo primero que tenes que hacer es preparar cualquier distro linux que uso modo live en un usb o dvd, cd, lo que tengas a mano (yo a veces uso un cd de Ubuntu 10.10 que tengo guardado hace varios años).</li>
    <li>Bootear el sistema live que preparaste.</li>
    <li>Abrimos una terminal y escribimos el siguiente comando para ver las particiones de los distintos discos duros: "<strong>sudo fdisk -l"</strong> . Vamos a ubicar la particion donde tenemos nuestros sistemas. Sugiero que te copies el arbol de particiones para tenerlo a mano.</li>
    <li>Una vez que ubicamos la particion de nuestros sistemas vamos a montar la particion del sistema en el que querramos recuperar el GRUB (tomando como ejemplo la conversacion de Telegram, si queres tener el GRUB de elementaryOS, montas esa particion y si queres tener el GRUB de Deepin montas la particion correspondiente).
Para montar la particion vamos a escribir en la termina el siguiente comando:
<strong>"sudo mount /dev/sdaX /mnt"</strong> donde sdaX es la particion correspondiente.</li>
    <li>Ahora vamos a montar el resto de los dispositivos ejecutando el siguiente comando: "<strong>sudo mount --bind /dev /mnt/dev"</strong></li>
    <li>Ejecutamos el comando chroot de forma que accedemos como root al sistema de archivos de nuestro sistema a rescatar escribiendo lo siguiente:
<strong>"sudo chroot /mnt"</strong></li>
    <li>Por ultimo, lo que vamos a hacer es instalar el GRUB  en el MBR ejecutando el siguiente comando:
<strong>"grub-install --recheck /dev/sdX"</strong>
SdX lo debemos sustituir por el disco duro que utilizamos para arrancar los sistemas operativos (generalmente sda). Cuidado! No hay que poner el numero de particion, sino solo el disco duro.</li>
    <li>Reiniciamos y vamos a ver el GRUB con la opcion de acceder al sistema que hemos recuperado. Si tenemos otro sistema en dual boot, seguramente no lo vamos a ver en el GRUB asi que lo que vamos a hacer es bootear el sistema normalmente (no el del live) y en una terminal vamos a escribir:
<strong>"sudo update-grub" (o "sudo grub-mkconfig -o /boot/grub/grub.cfg" en el caso que la distro no sea basada en Debian)</strong>
Con esto actualizamos el GRUB y lo dejamos listo para acceder a todos los Sistemas que tenemos en nuestra PC.</li>
</ol>

Cabe indicar que con estos pasos podemos tanto instalar el GRUB de la distro que querramos pero que tengamos instalada en nuestro equipo (por si tenemos Ubuntu y Arch en el mismo equipo y queremos el GRUB de Arch en vez del de Ubuntu), o como escribi antes, para poder bootear nuestro sistema Linux una vez que hayamos instalado Windows por si lo necesitamos por algo (lamentablemente).

Si te sirvio este tutorial dejanos un comentario.

Saludos!

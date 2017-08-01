---
layout: post
title: Pasos definitivos a la hora de actualizar kernel y usar VirtualBox
date: 2016-11-14
author: neoranger
comments: true
categories: [Aporte]
---
Seguramente si instalaste VirtualBox en tu distro habrás tenido de primera algún problema como éste:

<img class="  wp-image-3553 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/11/virtualbox_error.jpg" alt="virtualbox_error" width="533" height="312" />

Este error es muy común en la primera ejecución de una máquina virtual, pero lo bueno es que podemos solucionarlo de una manera muy fácil:

<!--more-->

Si no instalaste VirtualBox, primero hay que hacerlo con:

<blockquote>Arch y derivadas:
$ sudo pacman -S virtualbox</blockquote>

Una vez que tenemos instalado VirtualBox tenemos que instalar los siguientes paquetes:

<blockquote>$ sudo pacman -S linuxXX-virtualbox-guest-modules

$ sudo pacman -S linuxXX-virtualbox-host-modules</blockquote>

Acá debemos reemplazar las XX por nuestra versión de kernel. Si estamos usando el kernel 4.4 el paquete debería ser <strong>"linux44-virtualbox..."</strong> tanto para guest como para host.

Ahora lo que nos queda hacer es:

<blockquote>$ sudo modprobe vboxdrv</blockquote>

Una vez que esté todo ésto instalado debemos reiniciar nuestro equipo para que los módulos se carguen al inicio del sistema.

Y listo, problema resuelto.

---
layout: post
title: Ejecutar script al inicio del sistema (ideal para bots de Telegram en Raspbian)
date: 2016-10-28
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-3352 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/bash.jpg" alt="bash" width="314" height="209" />

Hace un tiempo que estaba buscando una fácil solución para la ejecución de scripts al incio del sistema de una manera fácil y sencilla.

Esto quería hacerlo más que nada por si hay algún problema eléctrico con la RaspberryPi y ésta se apague o se reinicie por algún tema de éstos.

Así que encontré la mejor opción, la cual consiste en modificar el archivo /etc/rc.local . Vamos a ver ésto con más detalle.

<!--more-->

El archivo rc.local cuenta con la siguiente información:

<blockquote>#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

exit 0</blockquote>

Básicamente este archivo no hace nada de por sí, pero lo interesante es que si agregamos la ruta de un script para que se ejecute, lo va a ser sin problemas. Esto es porque el archivo rc.local se ejecuta después de cada runlevel, asi que nos viene perfecto.

Vamos a dejar el archivo entonces con las rutas de ejecución de los scripts que queremos que se ejecuten al inicio del sistema. <span style="color:#ff0000;"><strong>Atención</strong></span>, la última linea siempre tiene que ser la que dice "exit 0", sino no funcionará.

<blockquote>#!/bin/sh -e
#
# rc.local
#
# This script is executed at the end of each multiuser runlevel.
# Make sure that the script will "exit 0" on success or any other
# value on error.
#
# In order to enable or disable this script just change the execution
# bits.
#
# By default this script does nothing.

<span style="color:#ff0000;"><strong>/home/neoranger/Documentos/git/ActionLauncher/runbot.sh</strong></span>
<span style="color:#ff0000;"><strong>/home/neoranger/Documentos/git/NeoBot/runbot.sh</strong></span>

exit 0</blockquote>

Las lineas de color rojo son lo nuevo que le agregamos al archivo. Lo guardamos, lo cerramos y listo. Solo es cuestión de probar con un reinicio normal del sistema.

Si alguno lo prueba no deje de comentar como le fué.

---
layout: post
title: Cómo obtener los mejores repositorios en ArchLinux
date: 2016-03-30
author: neoranger
comments: true
categories: [Aporte]
---
&nbsp;

<img class="  wp-image-2187 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/archlinuxlogo.png" alt="archlinuxlogo" width="379" height="112" />

Hace unas semanas que estoy probando ArchLinux instalado a mano, sin nada de por medio. Después de varios años de ser un usuario Linuxero, tuve el suficiente conocimiento y gracias a la Wiki de Arch pude instalarlo en el primer intento, algo que me enorgullece mucho.

A raíz de esto, me empecé a interiorizar mas y estaba buscando un método para poder obtener los mejores repositorios, los más rápidos y más actualizados para ArchLinux. Manjaro tiene su propio script pero al usar sus propios repos no se puede usar en ArchLinux, aunque según el amigo Tete, se puede portar pero no es nada facil.

<!--more-->

Entonces encontré una manera super facil de hacerlo, usando Reflector, un script que a partir de ciertos parámetros podemos elegir cuantos repositorios queremos rápidos y cuantos actualizados.

Primero que nada tenemos que instalar reflector haciendo:

<blockquote>sudo pacman -S reflector</blockquote>

Antes de continuar, <strong>conviene hacer un backup de nuestro mirrorlist,</strong> por las dudas:

<blockquote>sudo cp /etc/pacman.d/mirrorlist  /home/usuario/</blockquote>

Y una vez que lo tenemos el backup hecho escribimos:

<blockquote>sudo reflector -a10 -f10 --save /etc/pacman.d/mirrorlist</blockquote>

Con este comando le estamos diciendo a reflector que tome los 10 repositorios más actualizados y los 10 más rápidos y que obviamente los guarde en el archivo mirrorlist de pacman.
Después de esto solo tenemos que actualizar nuestros repositorios haciendo el comando habitual

<blockquote>sudo pacman -Syyu</blockquote>

Y listo, vamos a actualizar nuestro ArchLinux muchisimo más rápido. Espero que les sirva mucho y que puedan usarlo y comentarnos que tal les fue.

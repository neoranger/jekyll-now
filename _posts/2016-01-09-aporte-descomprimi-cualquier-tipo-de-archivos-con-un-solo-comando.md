---
layout: post
title: Descomprimí cualquier tipo de archivos con un solo comando
date: 2016-01-09
author: neoranger
comments: true
categories: [Aporte]
---
La terminal es una herramienta indispensable para todo Linuxero o para aquel que quiera saber usar GNU/linux, tal como lo expreso <a href="http://www.neositelinux.com.ar/2015/12/22/opinion-gnulinux-no-es-para-todo-el-mundo/">en otro post</a>. Es por eso que hoy les traigo una gran herramienta que nos ayuda mucho cuando estamos usando la terminal y no nos queremos salir de ella para algo tan simple como descomprimir un archivo.

Navegando por la red me encontré con scripts bastante interesantes que nos ayudan a resolver algunas cuestiones de manera muy pero muy simple.
Este es el caso del script que les traigo hoy que nos permite con un solo comando poder extraer cualquier tipo de archivo comprimido.

<!--more-->

El script es el siguiente:

<blockquote>extract () {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2) tar xvjf $1 ;;
*.tar.gz) tar xvzf $1 ;;
*.tar.xz) tar Jxvf $1 ;;
*.bz2) bunzip2 $1 ;;
*.rar) unrar x $1 ;;
*.gz) gunzip $1 ;;
*.tar) tar xvf $1 ;;
*.tbz2) tar xvjf $1 ;;
*.tgz) tar xvzf $1 ;;
*.zip) unzip $1 ;;
*.Z) uncompress $1 ;;
*.7z) 7z x $1 ;;
*) echo "nada para extraer '$1'..." ;;
esac
else
echo "'$1' no es un archivo valido!"
fi
}</blockquote>

Como ven, lo que hace el script es identificar el tipo de archivo comprimido y si coindice con alguno de los que está (creo que no falta ningún tipo mas) hace el paso de descompresión. Incluso si el archivo descomprimido ya existe (como el caso que muestro abajo) deja que el sistema pregunte si querés sobreescribirlo, reemplazarlo o cancelar.

La utilización del script es muy fácil, solo tenemos que editar nuestro archivo .bashrc que está en nuestra /home y abajo de todo (para mas comodidad y no tocar nada ya escrito) ponemos el script.

<img class=" size-full wp-image-2404 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/extraer_en_un_solo_comando.png" alt="extraer_en_un_solo_comando" width="1366" height="768" />

Su funcionamiento es tan sencillo que puedo mostrarlo en una captura de pantalla:

<img class=" size-full wp-image-2407 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/extraer_en_un_solo_comando2.png" alt="extraer_en_un_solo_comando2" width="735" height="492" />

Para que el script funcione una vez que lo hayamos pegado en el archivo .bashrc (y guardado, obviamente), tenemos que por lo menos desloguearnos y volvernos a loguear asi la config de bash se reestablece tomando la funcion extract. También podemos escribir en la terminal "<strong>source ~/.bashrc</strong>" (sin comillas) y nos ahorramos el relogueo del sistema. (Gracias a @rawBasic por el dato).

Espero que les sirva y que nos comenten cuanto usan la terminal para estas cosas.

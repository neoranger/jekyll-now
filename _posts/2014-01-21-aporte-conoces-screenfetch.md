---
layout: post
title: "Conocés Screenfetch??"
date: 2014-01-21
author: neoranger
comments: true
categories: [Aporte]
---
La terminal es la más utilizada en Linux para llevar a cabo diferentes acciones, como por ejemplo: Instalar un programa, Ver los recursos de la computadora, Actualizar el sistema, entre otras cosas. En este articulo veremos como personalizar la terminal de ubuntu (también sirve para otras distros) añadiendo un logo y la información de nuestra computadora.

<center><img class=" size-full wp-image-2064 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/210c5-terminal.png" alt="210c5-terminal" width="724" height="460" /></center>
Para ello vamos a instalar un programa llamado screenfetch, este programa hace el efecto deseado que es personalizar nuestra terminal dibujando el logo de la distribución que estemos usando en código ASCII, para instalarlo sigue estos pasos: Hay que ejecutarlo linea por linea.

<pre style="background-color:black;background-position:0 0;background-repeat:no-repeat no-repeat;border-bottom-left-radius:3px;border-bottom-right-radius:3px;border-top-left-radius:3px;border-top-right-radius:3px;border:1px solid #000000;color:whitesmoke;font-size:13px;margin:8px 15px;opacity:.85;padding:9.5px;text-shadow:none;white-space:pre-wrap;word-break:break-all;word-wrap:break-word;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><span style="border:none;line-height:20px;list-style:none;margin:0;outline:none;padding:0;">cd /usr/bin/
</span><span style="border:none;line-height:19.5px;list-style:none;margin:0;outline:none;padding:0;">sudo wget -c https://raw.github.com/KittyKatt/screenFetch/master/screenfetch-dev -O screenfetch
</span><span style="border:none;line-height:19.5px;list-style:none;margin:0;outline:none;padding:0;">sudo chmod +x screenfetch
</span><span style="border:none;line-height:19.5px;list-style:none;margin:0;outline:none;padding:0;">screenfetch</span>
</span></pre>

Para lanzar el programa escribimos en una terminal "screenfetch", pero si queremos que se lance automáticamente al abrir el terminal lo que haremos sera esto:

1. Dirígete a tu carpeta personal
2. Presiona Ctrl + H para ver los archivos ocultos, el que nos interesa es el que dice ".bashrc"


<div style="background-color:white;color:#333333;font-size:13px;"><img class=" size-full wp-image-2356 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/d88a4-bash.png" alt="d88a4-bash" width="802" height="576" /></div>

3. Abrilo con el editor de texto y al final de todo agrega esta linea: `screenfetch`

<div style="background-color:white;color:#333333;font-size:13px;"><img class=" size-full wp-image-2366 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/d9660-screenfetch.png" alt="d9660-screenfetch" width="652" height="515" /></div>

Recordá que si añadís ésta última linea el terminal tardara un tiempo de 1 segundo más en iniciar, así que si no quieres eso siempre podrás abrir tu terminal y escribir screenfetch para ver el efecto.

<div style="background-color:white;color:#333333;font-size:13px;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><a href="http://www.droidypc.com/2014/01/personaliza-tu-terminal-con-screenfetch.html" target="_blank">FUENTE</a></span></div>

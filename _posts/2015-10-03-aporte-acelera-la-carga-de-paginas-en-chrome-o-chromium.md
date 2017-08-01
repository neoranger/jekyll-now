---
layout: post
title: Acelera la carga de páginas en Chrome o Chromium
date: 2015-10-03
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-2524 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/google-chrome-faster.png" alt="google-chrome-faster" width="246" height="245" />

Hace unos días la carga de páginas en Chrome se me volvió mas lenta, la verdad no se por qué ya que problema del ISP no es y la laptop es lo suficientemente potente para realizar una carga rápida.
Asi que navegando por la web encontré estos sencillos pasos para poder acelerar la carga de páginas en nuestro navegador Google Chrome:

<ol>
    <li>En una terminal escribimos:
<blockquote>sudo nano /usr/share/applications/google-chrome.desktop</blockquote>
</li>
    <li>Solo tenemos que buscar la línea <b>Exec</b>, que dependiendo de nuestro sistema puede variar, pero que siempre cumple lo mismo: ejecutar la orden con la que lanzar la aplicación. En mi caso, la línea era esta:
<blockquote>Exec=/usr/bin/google-chrome-stable %U</blockquote>
</li>
    <li>A esa linea (lo que ya está escrito) le agregamos lo siguiente:
<blockquote>Exec=/usr/bin/google-chrome-stable %U <strong>--disk-cache-dir="/tmp/ram/"</strong></blockquote>
</li>
</ol>

Con esto, matamos 2 pájaros de 1 tiro. Primero, conseguimos que la carga de caché de las páginas sea mucho más rápida, ya que la RAM es más rápida que el disco duro. Segundo, conseguimos limpiar un poco nuestro sistema ya que lo que se guarda en RAM se borra al apagar el ordenador, con lo que podemos ahorrar unos 500-700MB de datos de caché, el cual se ubica en <b>~/.cache/google-chrome</b> . <b>Con eliminar esa carpeta de caché</b> conseguiremos <b>liberar </b>ese <b>espacio</b>, la cual ya no necesitaremos más, pues usaremos la RAM.

A tener en cuenta: Cada vez que actualicemos Chrome vamos a tener que hacer esto ya que se pisa el archivo .desktop por ende la configuración se borra.

<a href="http://linuxenandalu.blogspot.com.ar/2014/09/acelera-chromium-y-google-chrome-en.html">FUENTE</a>

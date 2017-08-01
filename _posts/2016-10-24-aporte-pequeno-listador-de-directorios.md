---
layout: post
title: Pequeño listador de directorios
date: 2016-10-24
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-3352 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/bash.jpg" alt="bash" width="381" height="254" />

Hace unas horas, un usuario de un grupo de Telegram trajo la duda sobre un ejercicio que estaba haciendo en bash. Básicamente lo que quería el es que al ejecutar el script en bash, el programa pida un directorio determinado, validar ese directorio y si afirmativamente lo es, mostrará todos los directorios y sub directorios que haya dentro.

Después de unos minutos hice este pequeño script que le sirvió mucho al usuario y me gustaría compartirlo para aquellos que son curiosos y quieran meterse un poco en el mundo del scripting.

<!--more-->

Es verdad que el script es super básico, pero viene super bien para aprender un poco. El script es el siguiente:

<blockquote>#!/bin/bash
echo "Ingrese el directorio a listar"
read directorio

if [ -d $directorio ]; then
echo "es un directorio"
#tree $directorio
tree -d $directorio
else
echo "no es un directorio"
fi</blockquote>

Como pueden apreciar, lo que hace es el script es preguntar por un directorio. Se ingresa un directorio y se valida si lo es, si efectivamente lo es, se utiliza el comando <strong>tree -d</strong> que lo que hace es listar los directorios y subdirectorios en forma de árbol sin mostrar el contenido del mismo, a diferencia del comando <strong>tree</strong> a secas que lo que hace es listar los directorios mostrando también el contenido del mismo.

Una captura para ver como funciona:

<img class="  wp-image-3358 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/bash2.png" alt="bash2" width="573" height="466" />

Asi de simple es el script. Espero que les sirva y si tienen algún comentario que hacer, es bienvenido.

---
layout: post
title: Un Script Básico para recopilar información
date: 2013-01-07
author: neoranger
comments: true
categories: [Aporte]
---
<div dir="ltr" style="text-align:left;">
<div style="text-align:justify;">Hoy nuevamente retomo mis clases por lo que decidí ir a dar una vuelta por la universidad esta mañana, bueno para ser sincero fui a fisgonear. Pude percatarme que existía un ambiente de preocupación y de una concentración fatal ..."Horror la Biblioteca anda  a full" no sólo están los mismo chicos de siempre,... Hasta que ví la programación de los exámenes  para esta semana ...</div>
<div style="text-align:justify;"></div>
<div style="text-align:justify;">Ahi les dejo un sencillo script de consola , para recopilar información básica del sistema. Los resultados se redirigen aun fichero de texto, dicho fichero permitirá concentrarnos en el análisis de la información que hemos obtenido, en vez de  escribir una sucesión interactiva de comandos find (y comandos man para buscar los parametros de find ).</div>
<div style="text-align:justify;">2&gt;/dev/null unida a cada comando es una redirección que elimina las advertencias que genera el comando find de "Permiso denegado" haciendo así el informe más fácil de leer y analizar.</div>
<div style="text-align:justify;"></div>
<div style="text-align:justify;">************************** Código***************************************</div>
<div style="text-align:justify;"></div>
<div style="text-align:justify;">
<blockquote>
<div>#!/bin/sh
echo version de la distribucion y kernel
cat /etc/issue
uname -a</div>
echo sistemas de archivos activos
mount -l

echo configuracion de red
ifconfig -a
cat/etc/hosts
arp

echo herramientas de desarrollo disponibles
which gcc
which g++
which python

echo paquetes instalados (ubuntu)
dpkg -l

echo servicios
net stat -tulnpe
echo procesos
ps -aux

echo tareas programadas
find /etc/cron* -ls 2&gt;/dev/null
find /var/spool/cron* -ls 2&gt;/dev/null

echo ficheros con permisos de lectura en /etc
find /etc -user `id -u` -perm -u=r -o -group `id -g` -perm -g=r -o -perm -o=r -ls 2&gt;/dev/null

echo ficheros SUID  &amp; GUID con permisos de escritura
find / -o -group
`id -g` -perm -g=w -perm -u -o -perm -o=w -perm -u -o -perm -o=w -perm -g=s -ls 2&gt;/dev/null

echo ficheros SUID &amp; GUID
find / -type f -perm -u=s -o -type f -perm --ls 2&gt;/dev/null

echo ficheros con permiso de escritura fuera de HOME
mount -l find / -path "$HOME" -prune -o -path "/proc"
-prune -o (! -type l ) (-user `id -u` -perm -u=w -o -group `id -g` -perm -g=w -o -perm -o=w) -ls2&gt;/dev/null</blockquote>
***********************************************************************</div>
Al ejecutar el script en Metasploitable, se obtiene muchísima información . A probarlo se ha dicho....
<div style="text-align:justify;"></div>
</div>

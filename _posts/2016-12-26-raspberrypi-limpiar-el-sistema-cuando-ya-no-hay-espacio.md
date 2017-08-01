---
layout: post
title: Limpiar el sistema cuando ya no hay espacio
date: 2016-12-26
author: neoranger
comments: true
categories: [RaspberryPi]
---
<img class=" size-full wp-image-2722 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/raspberry-pi-logo-768x384.jpg" alt="raspberry-pi-logo-768x384" width="768" height="384" />

Hace un rato accedí a mi RaspberryPi a través de SSH y queriendo navegar entre los directorios me sale el típico error al llenarse la partición. Hablo de éste error:

<img class="  wp-image-3960 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/problema_espacio_rpi.png" alt="problema_espacio_rpi" width="594" height="136" />

Cuando ésto pasa y queremos navegar en los directorios y completar un directorio con TAB nos saldrá éste error.

<!--more-->

Es un error fácil de solucionar, lo vamos a dejar plasmado por si pasa más adelante. Lo que hay que hacer es escribir una serie de comandos.

El primero es:

<blockquote>$ sudo apt-get autoremove</blockquote>

<img class="  wp-image-3967 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/problema_espacio_rpi2.png" alt="problema_espacio_rpi2" width="592" height="208" />

Con éste comando accedemos a borrar los paquetes que ya no se utilizan o temporales, etc.

El siguiente comando es:

<blockquote>$ sudo apt-get clean</blockquote>

<img class="  wp-image-3975 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/problema_espacio_rpi3.png" alt="problema_espacio_rpi3" width="320" height="24" />

Este comando termina por limpiar basura, archivos temporales que el comando anterior no limpió y demás.

Fíjense ahora el porcentaje que nos queda, habiendo tenido el 100% de ocupación de espacio:

<img class="  wp-image-3980 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/problema_espacio_rpi4.png" alt="problema_espacio_rpi4" width="573" height="79" />

Con ésto logramos bajar el porcentaje de ocupación de espacio en nuestra RaspberryPi y de paso limpiamos un poco el sistema.

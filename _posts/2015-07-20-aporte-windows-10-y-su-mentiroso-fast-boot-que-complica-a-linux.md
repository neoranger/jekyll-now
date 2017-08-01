---
layout: post
title: Windows 10 y su mentiroso fast boot que complica a Linux
date: 2015-07-20
author: neoranger
comments: true
categories: [Aporte]
---
Lamentablemente por cuestiones laborales (y personales también) tengo que tener alojado en mi laptop una partición con Windows. En este caso Windows 10, si si, me bajé el sistema en su versión "para insiders" para probar como iba y la verdad que antes que Windows 8 prefiero el menú inicio de W10. Como ya llegó a su "versión estable" antes de que se lance oficialmente decidí dejar ese sistema ya que no me trae problemas algunos (por ahora) ya que el uso que le doy es mínimo.

Pero en estos días tuve un problema que acabo de resolver mirando solo una serie sencilla de pasos. Hace varios días notaba que el booteo de W10 era muy bueno, el tiempo era bajo y el inicio dentro de todo rápido. Pero noté que al encender la laptop cuando muestra la pantalla de la marca de la misma abajo aparecía un mensaje parecido a este:

<blockquote>"restoring hibernation..."</blockquote>

Me resultaba algo muy raro pero no le daba importancia ya que no había problema alguno con ninguno de los dos sistemas (Manjaro XFCE y W10). Hasta el día que quise chequear algo en mi disco de datos y me salió esto:

<a href="http://www.neositelinux.com.ar/wp-content/uploads/2015/07/W10_1.jpg"><img class=" size-full wp-image-2695 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/photo_2015-07-20_19-51-16.jpg" alt="photo_2015-07-20_19-51-16" width="573" height="482" /></a>

Este error hace que tanto Manjaro como mi anterior distro instalada, Linux Mint, no puedan montar el disco.
Buscando por la web descubrí que esto se debe a que W10 no hace un apagado total del sistema sino que mete al sistema en una especie de hibernación (por esto el mensaje que les decía al principio del post) pero sin gastar batería y por eso su inicio es relativamente más rápido, lo hacen llamar "fastboot" (booteo rápido). Esto hace que el disco al que quiero acceder, al ser una partición NTFS que comparten los dos SO cuando uso W10 lo deja en un estado en el que es imposible leerlo. Claro, ustedes me dirán que puedo accederlo igual si toco las configuraciones, si, esto es cierto, pero esto puede hacer que genere problemas grandes ya que W10 deja al disco en un estado al que podríamos llamarlo "de cerrado incompleto" entonces cuando se va a querer acceder desde W10 y quiere retomar este estado podemos romper el disco si lo tocamos desde Linux.

Pero tranquilos, la solución existe y es sumamente fácil. Son 6 pasos sencillos que debemos realizarlos desde Windows 10:

1) Abrimos el Panel de Control y vamos a Sistema:

<img class=" size-full wp-image-2923 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/w10_1.jpg" alt="w10_1" width="1366" height="768" />
2) Vamos al apartado "Inicio/Apagado y Suspensión".

<img class=" size-full wp-image-2929 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/w10_2.jpg" alt="w10_2" width="1366" height="768" />

3) Hacemos click en "Configuración adicional avanzada".

<img class=" size-full wp-image-2935 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/w10_3.jpg" alt="w10_3" width="1366" height="768" />

4) Ahora vamos al apartado "Elegir la acción de los botones de inicio/apagado".

<img class="alignnone size-full wp-image-2941" src="https://blogneositelinux.files.wordpress.com/2016/10/w10_4.jpg" alt="w10_4" width="1366" height="768" />

5) Hacemos click en Cambiar la configuración no disponible actualmente. Esto hará que la parte gris de la configuración se habilite.

<img class=" size-full wp-image-2947 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/w10_5.jpg" alt="w10_5" width="1366" height="768" />

6) Desactivamos la opción "Activar inicio rápido (recomendado)". Este es el famoso "fast boot" de Windows 10.

<img class=" size-full wp-image-2953 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/w10_6.jpg" alt="w10_6" width="1366" height="768" />

Con estos pasos hechos veremos que no vamos a tener problemas en acceder a nuestra partición NTFS en Linux ya que Windows 10 hará el apagado completo del equipo, por ende, el cierre de estado correcto para los discos.
Esto mas que nada parece un tutorial de Windows, pero si tienen el mismo problema esto es la solución más rápida. Claro que con esto sacrificamos el "inicio rápido" de Windows 10, pero vamos, prefiero un sistema estable y accesible a uno que inicie un poco más rápido.

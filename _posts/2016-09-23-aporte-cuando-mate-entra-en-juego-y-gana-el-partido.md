---
layout: post
title: Cuando MATE entra en juego y gana el partido
date: 2016-09-23
author: neoranger
comments: true
categories: [Aporte]
---
Hace poco empecé a probar una distro que tiene poco tiempo de vida. Hablo de <a href="https://solus-project.com/">Solus, la distro creada por Ikey Doherty</a> (creador de las extintas SolusOS, EvolveOS y del entorno <a href="https://solus-project.com/budgie/">Budgie</a>), una distro que me sorprendió muchísimo.

<img class="  wp-image-2818 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/soluslogo-svg_.png" alt="soluslogo-svg_" width="223" height="223" />

Su entorno Budgie que usa librerías GTK tiene un aire a Gnome pero se nota mucho la diferencia sobre todo en su panel de configuración, algo muy funcional y que anda excelentemente bien.

<!--more-->

Y que tiene que ver MATE en todo esto? Bueno, hace poco, en el sitio de Solus anunciaron que estaba MATE disponible para instalar, una noticia que la pasé por alto porque estaba dándole una oportunidad a Budgie. Pero algo pasó, algo que me sigue desde que tengo mi laptop nueva.

<img class=" size-full wp-image-2259 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/budgie.png" alt="budgie" width="219" height="219" />

Todas las distros donde las he instalado con Gnome o algún entorno derivado del mismo, como Deepin, Cinnamon, Budgie, Pantheon, etc. llego a tener el mismo problema. El brillo, el bendito brillo.
En una laptop el control del brillo es fundamental. Con mucho brillo se agota muy rápido la batería del equipo, algo que en una portatil no se puede admitir. Pero la solución la había encontrado hace rato. Un <a href="https://neositelinux.com.ar/2015/07/30/podcast-neositelinux-podcast-3-el-script-milagroso-y-windows-10/" target="_blank">script el cual usaba para ejecutarlo al inicio del sistema</a> que me baje el brillo.

Con esto estaba todo solucionado, pero en entornos como Gnome o basados, el script funciona hasta cierto punto. De alguna manera o haciendo algo que todavía no tengo idea, el brillo se dispara como nada al 100% en cualquier momento en que esté con la laptop. Algo increíble y que solo pasa con Gnome o entornos derivados.

Es por esto que gracias al grupo de Telegram sobre <a href="https://telegram.me/solus_es">Solus en Español</a> que creamos recientemente, uno de los usuarios me trajo a la memoria la noticia que había visto en la web. MATE estaba disponible en Solus y como el script me anda perfecto en entornos como XFCE, quise probar con MATE a ver si se daba lo mismo.

<img class="  wp-image-2630 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/mate-logo.png" alt="mate-logo" width="261" height="262" />

Para instalar MATE en Solus, solo tenemos que escribir el siguiente comando en una terminal:

<blockquote>sudo eopkg it -c desktop.mate</blockquote>

Una vez instalado MATE, probé el script a ver si andaba, primero que nada, desde el inicio del sistema y segundo si no se disparaba como en Gnome. Y funcionó!!!

Es tremendo que un entorno te juegue tan en contra con algo tan sencillo como lo es el tema del brillo, que, además, no andan los controles de brillo con atajos de teclado a menos que se use el kernel 3.14 o 3.16. Increíble.

Después de unos días no lo pude disfrutar por <a href="https://neositelinux.com.ar/2016/09/19/offtopic-sin-laptop-y-sin-linux-neo-pierde-la-cabeza/">temas conocidos, pero volveremos!</a>

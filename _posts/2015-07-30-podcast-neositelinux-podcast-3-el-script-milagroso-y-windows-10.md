---
layout: post
title: "NeoSiteLinux Podcast #3 - El script milagroso y Windows 10"
date: 2015-07-30
author: neoranger
comments: true
categories: [Podcast]
---
Hola a todos, una vez más les traigo un nuevo podcast. Esta vez lo grabé correctamente, sin música de fondo y con un buen micrófono para que se pueda escuchar como debe ser.

Esta vez tocamos dos temas interesantes, un tema es sobre un script el cual le salvó la vida a mi laptop por el tema del brillo (tan mencionado en el blog y en los podcasts) y el otro tema es el lanzamiento oficial de Windows 10 para todo el planeta.

Espero que les guste y que si quieren pueden suscribirse al <a href="http://www.ivoox.com/podcast-neositelinux-podcast_sq_f1169111_1.html">podcast en Ivoox</a> o seguirnos la 24 horas desde <a href="http://killallradio.tk">KillAll Radio</a> donde tanto nuestro podcast como otros están rotando junto con música 100% creative commons.

<a href="http://ar.ivoox.com/es/neositelinux-podcast-3-ano-2015-el-audios-mp3_rf_5609071_1.html" title="NeoSiteLinux Podcast #3 - Año 2015 - El script milagroso y Windows 10">NeoSiteLinux Podcast #3 - Año 2015 - El script milagroso y Windows 10</a>

<audio id="audio" preload="auto" controls="" src="http://podcastcdn-15.ivoox.com/audio/1/7/0/9/neositelinuxpodcast3ano2015el-killallradiopodcast-ivoox5609071.mp3?secure=7G9aNk6-rwa_qKMeOAZK6A==,1502482773"></audio>

Les dejo el script del que hablo en el podcast, acuerdense que parece que solo andan en distros basadas en Ubuntu. Crea un archivo de texto (dandole como extension .sh para poder ejecutarlo) y pegale lo siguiente:
```
#!/bin/sh
activeOutput=$(xrandr | grep -e " connected [^(]" | sed -e "s/([A-Z0-9]+) connected.*/1/")
alpha=zenity --scale --text "Brightness" --min-value=10 --max-value=100 --value=50
alpha=echo $alpha / 100 | bc -l
xrandr --output $activeOutput --brightness $alpha
```

Espero que te sirva y si te sirve comentamelo.

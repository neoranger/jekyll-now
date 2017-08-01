---
layout: post
title: Conexión remota por VNC
date: 2016-12-09
author: neoranger
comments: true
categories: [RaspberryPi]
---
<img class=" size-full wp-image-3796 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_serveru1.png" alt="vnc_serveru" width="300" height="213" />Algunas veces, muchos de nosotros usamos nuestra RaspberryPi como servidor y no la tenemos conectada a ningún monitor o TV porque no lo necesitamos o por el simple hecho de que no usamos el entorno gráfico sino que con la consola nos arreglamos bien.

Pero hay veces que necesitamos hacer cosas con un entorno gráfico pero, como mencionamos antes, no tenemos la Pi conectada a un monitor o estamos lejos de ella, por lo que nos viene muy bien conectarnos via VNC. ¿Como logramos ésto?

<!--more-->

Primero que nada, si tenemos desactualizado el sistema aprovechamos y lo actualizamos:

<blockquote><strong>sudo apt-get update &amp;&amp; sudo apt-get upgrade</strong></blockquote>

Ahora, vamos a instalar el servidor VNC en nuestra RaspberryPi:

<blockquote><strong>sudo apt-get install tightvncserver</strong></blockquote>

Una vez que instalamos el servidor, tenemos que levantarlo, o poner en marcha, por así decirlo, para que podamos conectarnos:

<blockquote><strong>vncserver :1</strong></blockquote>

La primera vez que ejecutemos ésto nos pedirá que ingresemos una contraseña que será la que usaremos para conectarnos al servidor VNC. Es una contraseña totalmente distinta al usuario que usemos en la Pi o al usuario root, es decir, que es una contraseña aparte. Esto lo aclaro por si quieren usar o no la misma password que usan en el sistema.

Fíjense bien que entre el nombre de la aplicación y el parámetro <strong>:1</strong> hay un espacio, eso es fundamental para que pueda funcionar correctamente sino dará error. Con ésto hemos creado el servidor VNC con la sesión 1 lista para conectarse.

<strong>Conectándonos al servidor VNC:</strong>

Como estoy desde Manjaro yo he instalado el cliente TigerVNC que pueden encontrarlo en los repositorios oficiales de Manjaro y que seguramente esté disponible para las demás distros. Para instalar ésta aplicación solo hacemos lo siguiente:

<blockquote>sudo pacman -S tigervnc</blockquote>

<img class="  wp-image-3777 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_server2.png" alt="vnc_server2" width="488" height="202" />

Una vez ejecutada la aplicación donde dice Servidor VNC ponemos la IP de nuestra RaspberryPi con el nro de sesión que hemos creado, en este caso :1 <strong>(nótese que aquí no va el espacio sino que se escribe todo junto)</strong>.

<img class=" size-full wp-image-3789 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_server3.png" alt="vnc_server3" width="423" height="137" />

Ingresamos la contraseña que hemos configurado anteriormente y... Voilá!!

<img class=" size-full wp-image-3793 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_server4.png" alt="vnc_server4" width="1366" height="768" />

Otra herramienta super completa es la webapp <a href="https://chrome.google.com/webstore/detail/vnc%C2%AE-viewer-for-google-ch/iabmpiboiopbgfabjmgeedhcmjenhbla?utm_source=chrome-ntp-icon">VNCViewer</a> que pueden instalarla desde a Chorme Store de Google Chorme. Es una gran herramienta ya que hace el escalado del sistema muy bien y tiene modo a pantalla completa, además de ser multiplataforma ya que se instalar en Chrome, por ende se puede usar en cualquier sistema operativo. Les dejo algunas capturas para que la vean:

<img class="  wp-image-3807 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_server5.png" alt="vnc_server5" width="645" height="505" /><img class="  wp-image-3808 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_server6.png" alt="vnc_server6" width="653" height="512" /><img class="  wp-image-3809 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/12/vnc_server7.png" alt="vnc_server7" width="643" height="361" />

&nbsp;

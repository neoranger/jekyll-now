---
layout: post
title: Como tener el menú global de Unity en elementaryOS
date: 2014-01-28
author: neoranger
comments: true
categories: [Aporte]
---
Si amigos, así como lo leen, ahora es posible tener el menú global que tiene Ubuntu con Unity, en nuestro elementaryOS con gnome shell.

Para poder tenerlo solo tenemos que copiar y pegar estos comandos en nuestra consola:

-Primero instalamos el Super WingPanel:
<blockquote>"sudo apt-get install super-wingpanel"</blockquote>
-Después instalamos el indicator menú:
<blockquote>"sudo apt-get install indicator-appmenu"</blockquote>
-Configuramos para que aparezca el menú:
<blockquote>"  gsettings set org.pantheon.cerbere monitored-processes "['plank', 'slingshot-launcher --silent', 'env UBUNTU_MENUPROXY=0 super-wingpanel']"  "</blockquote>
-Sacamos el menú de las ventanas:
<blockquote>gsettings set org.pantheon.desktop.super-wingpanel blacklist "['']"</blockquote>
Y listo, solo resta desloguearse, volverse a loguear y activar el SuperWingPanel desde "Tweaks".

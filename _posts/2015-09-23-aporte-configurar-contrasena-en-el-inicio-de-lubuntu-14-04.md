---
layout: post
title: Configurar contraseña en el inicio de Lubuntu 14.04
date: 2015-09-23
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-2616 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/lubuntu-trasty-tahr_3.jpg" alt="lubuntu-trasty-tahr_3" width="500" height="376" />

Hace unos meses le instalé a mi hermano Lubuntu 14.04 en su PC del trabajo. Anteriormente esa PC tenía Windows y andaba realmente mal y como mi hermano necesitaba si o si que el equipo ande en óptimas condiciones le di la opción de Lubuntu ya que no es un un equipo muy nuevo y el Windows XP que tenía perdía soporte y estaba lleno de virus. Instalamos Lubuntu 14.04 entonces y el programa TeamViewer por las dudas para ayudarlo a actualizar el sistema y tocar alguna que otra cosa, es decir, darle un soporte remoto por cualquier cosa ya que yo era el responsable por haberle puesto ese sistema.

El problema fue que para hacerselo más fácil a el cuando lo instalé le dimos la opción de no usar la contraseña para loguearse sino que lo haga de manera automática. Una opción muy común en la mayoría de las distros Linux.

Pero como el trabaja en una oficina con varias personas vimos que eso sería un riesgo entonces decidimos que una vez que se instale el sistema configurarlo para que pida de nuevo la contraseña del usuario.
Nos dimos cuenta que modificando la opción desde la configuración del sistema no funcionaba incluso creando un usuario nuevo y dándole esa opción.

Entonces nos pusimos a buscar por la red y preguntamos a amigos Linuxeros como solucionar este problema. Solamente tenemos que escribir este comando en la terminal:

<blockquote>
<pre class="bbcode_code">sudo sed -i.bak 's/^autologin-user/#&amp;/' /etc/lightdm/lightdm.conf</pre>
</blockquote>

Al parecer la GUI (interfaz gráfica de usuario) que se usa para la configuración de los usuarios tiene un bug en el cual no sirve la modificación que hacemos con lo cual tenemos que tocar directamente el archivo de configuración de LightDM (gestor de sesiones).

Solamente reiniciando la PC el problema se arregló y ahora mi hermano tiene de nuevo la seguridad en su PC.

Espero que este simple tip pueda ayudarlos si tuvieron el mismo problema que nosotros y si están usando Lubuntu en su PC.

<a href="http://ubuntuforums.org/showthread.php?t=2229682">Fuente de donde saqué el comando</a>

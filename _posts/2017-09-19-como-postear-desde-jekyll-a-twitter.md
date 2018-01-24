---
layout: post
title: "Como mandar a twitter un nuevo post de Github+Jekyll"
date: 2017-09-19
author: neoranger
comments: true
categories: [Tecnologia, Informacion]
---

Hace un momento, pregunté en un grupo de Telegram sobre como poder notificar desde twitter un nuevo post creado en el blog. Es decir, que cuando postee en el blog salga directamente en Twitter un nuevo twit indicando que hay un nuevo post en el blog.
Esto se puede hacer de una manera super fácil gracias a IFTTT. IFTTT (If This Then That) es una aplicación en Android la cual se pueden crear diversas "recetas" para que se hagan de manera automática. 

Les doy algunos ejemplos: 
* A tal hora de tal día que mande un mensaje a determinado número de móvil
* Si me encuentro en determinada zona (teniendo el GPS prendido) que prenda o apague el wifi del móvil
* Si estoy escuchando Spotify que mande un twitt cuando empiece a escuchar y cuando deje de escuchar
* Y un laaaargo etcétera

Como ven, se pueden conectar servicios para realizar diferentes tareas específicas. Como Github+Jekyll no tiene un plugin determinado para publicar en Twitter cuando escribimos una nueva entrada, como si lo tiene Wordpress, usar IFTTT nos viene muy bien para hacer ésto. Lo mejor de todo es que IFTTT puede usar feeds RSS asi que...

#### ¿Cómo hacer para postear en twitter cuando escribimos una nueva entrada en el blog?
Vamos paso a paso.

1) Crear una nueva receta (ya con la app descargada en el móvil y con nuestra cuenta de Twitter vinculada a la aplicación)

<p align="center">
<img src="/images/feed_to_twitter0.jpg" width="300" height="500" alt="_Logo">
</p>

2) Buscamos el servicio que queremos usar, en éste caso **feed RSS** 

<p align="center">
<img src="/images/feed_to_twitter1.jpg" width="300" height="500" alt="_Logo">
</p>

3) Elegimos la opción "New feed item"

<p align="center">
<img src="/images/feed_to_twitter2.jpg" width="300" height="500" alt="_Logo">
</p>

4) Pegamos la URL del feed de nuestro blog

<p align="center">
<img src="/images/feed_to_twitter3.jpg" width="300" height="500" alt="_Logo">
</p>

5) Ahora lo que vamos a hacer es vincular la cuenta de twitter en ésta nueva receta. Seguimos con el paso "that"

<p align="center">
<img src="/images/feed_to_twitter4.jpg" width="300" height="500" alt="_Logo">
</p>

6) Elegimos la opción "Post a Tweet" ya que lo que hará ésto es postear al considerar una nueva entrada en el blog (fijense que tenemos muchas más opciones a elegir)

<p align="center">
<img src="/images/feed_to_twitter5.jpg" width="300" height="500" alt="_Logo">
</p>

7) Ahora vamos a configurar el mensaje que tendrá el tweet. Podemos poner muchos parámetros o si queremos podemos poner un mensaje propio escrito por nosotros. Por defecto vienen los parámetros "EntryTitle" (el nombre del post en el blog) y "EntryURL" (la URL que te lleva al post)

<p align="center">
<img src="/images/feed_to_twitter6.jpg" width="300" height="500" alt="_Logo">
</p>

8) Confirmamos la creación de la receta y si queremos podemos setear que nos notifique cada vez que la receta es ejecutada (como método para chequear que funcione)

<p align="center">
<img src="/images/feed_to_twitter7.jpg" width="300" height="500" alt="_Logo">
</p>

Espero que si tenían pensado hacer ésto puedan usar éste post como guía. Dejame tu comentario si tenés otro método.

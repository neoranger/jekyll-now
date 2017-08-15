---
layout: post
title: "Borradores y redireccion de dominio"
date: 2017-08-14
author: neositelinux
comments: true
categories: [Aporte, Offtopic]
---

Investigando un poco más sobre la creación de los blogs en Jekyll+Github me entero que se puede crer un directorio para los posts borradores, es decir, aquellos artículos que uno no quiere que se publiquen hasta que uno quiera.

Si bien, eso se puede hacer escribiendo el artículo y dejarlo de manera local en la PC donde lo hemos creado, el mismo no va a poder ser accedido en el caso en que querramos tocarlo desde otro equipo en otro lugar en donde estemos, incluso, con una PC que no sea nuestra. 

Por eso, para acceder al mismo desde cualquier equipo (al hacer commit y push a nuestro repositorio) tenemos que crear el directorio **_drafts** en la raíz de nuestro directorio del blog.

Ahí podemos tirar todo lo que querramos ya que no será publicado hasta que no pasemos ese artículo a la carpeta **_posts**.

Y como se darán cuenta, ahora si escriben [neositelinux.com](http://neositelinux.com) los traeráal blog en github, por lo que podemos decir que ya estamos al 90% de estar mudados del todo. Lo que me falta investigar un poco más es el tema de que el dominio .com no tiene HTTPS, pero eso es algo que tengo que ver bien como lo maneja Wordpress.

Lo bueno es que la URL [neoranger.github.io](https://neoranger.github.io) sigue funcionando sin problemas, por lo que hace que tengamos 2 opciones para que los seguidores puedan encontrarnos.

Los mantengo al tanto de las novedades sobre ésto.

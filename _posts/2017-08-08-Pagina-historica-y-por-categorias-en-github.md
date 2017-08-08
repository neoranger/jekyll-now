---
layout: post
title: "Página de Entradas históricas y páginas por Categorías en Github"
date: 2017-08-08 20:00
author: neositelinux
comments: true
categories: [Aporte]
---

A pedido del amigo Juan Febles hago éste post explicando como crear una página de entradas históricas y páginas por categorías en los blogs con github.

Quiero aclarar que ésta información no la obtuve por mi mismo sino que el usuario Joseda, en Telegram, me explicó un par de cosas y después yo me mandé a hacer un poquito más y a meter mano para dejar el blog como quiero.

Empezamos.

### Página de Entradas históricas
Se puede decir que para hacer ésto hay que estar muy atento porque si cambiamos algo y vemos que no impacta en nuestro blog es porque, obviamente, está mal asi que tenemos que ver bien los pasos. Vamos a ello.

### 1) Primero que nada como para hacer una nueva página necesitamos un archivo .html nos conviene hacer una copia del archivo index.html.

`cp index.html historico.html`

### 2) Una vez que lo tenemos copiado, lo que vamos a hacer es limitar el número de entradas en la página principal, asi que lo que vamos a hacer es editar el archivo index.html

`nano index.html`

A la linea que cita `{% for post in site.posts %}` (linea número 6 en mi archivo) debemos agregarle la variable **limit** `{% for post in site.posts  limit:15 %}`

Eso va a ser que limitemos el número de entradas en la página principal del blog.

# Entonces... ¿Dónde quedaron las demás entradas?

Eso es fácil de responder. Las otras entradas quedan ocultas, sin poder verse, por lo que vamos a tener que editar el archivo de histórico que hemos creado.

Antes de eso, vamos a agregar el archivo index.html el link a la página de históricas con el mensaje "Entradas Anteriores".

### 3) Agregamos el siguiente código antes del cierre del párrafo de html, es decir, antes del último `</div>`:

`<div align=center><strong><a href="{{ site.baseurl }}historico">---ENTRADAS ANTERIORES---</a></    strong></div>`

### 4) Editamos el archivo historico.html

`nano historico.html`

Lo que vamos a hacer es, primero que nada editar el tipo de página y el link permanente dejando esos datos como:

```
---
layout: page
title: Entradas Antiguas
permalink: /historico/
---
```

El código html que tiene (que viene copiado de index.html) lo dejamos como está. Pero solo vamos a tener que agregar lo siguiente:
En la que dice `{% for post in site.posts %}` debemos agregarle la variable **offset** `{% for post in site.posts  offset:15 %}`

Esta variable debemos ponerlo de acuerdo a lo que limitamos. Es decir, si limitamos las entradas a 5, debemos poner en la variable **limit** 5 y en **offset** 5 también así en la página de históricos continúa desde la quinta entrada hacia atrás. Se entiende? Espero que si.

Una vez que hacemos ésto vamos a poder ver que en la página principal estarán las últimas entradas que configuramos junto con el enlace a la página de entradas históricas.


# Páginas con entradas según categorías

Ahora, lo que vamos a mostrar es como hacer una página con las entradas donde solo la categoría (la cual se define en cada post que se escribe) es **Podcast**.

### 1) Volvemos a hacer una copia del archivo index.html para crear la página de podcasts:

`cp index.html podcast_list.html`

### 2) Editamos el tipo de página y el link permanente que tendrá esa página:

`nano podcast_list.html`

Dejamos los datos como:

```
 ---
layout: page
title:
permalink: /podcasts/
---
```

### 3) Editamos el ciclo For para que muestre solo la categoría que nosotros estamos buscando:

Modificamos la linea `{% for post in site.posts %}` por `{% for post in site.categories.CATEGORIA %}`. En éste caso vamos a modificar **CATEGORIA** por Podcast. 
**Atento a ésto porque ese parámetro es case sensitive. Es decir, que solo funcionará si la categoría está escrita exactamente igual como lo está en las entradas.**

### 4) Editamos el archivo  `_layouts/default.html` y agregamos la nueva página al menú:

`nano _layouts/default.html`

Buscamos el párrafo `<nav>...</nav>` y agregamos la nueva página de la siguiente manera:

`<a href="{{ site.baseurl }}/podcasts">Podcasts</a>`

Fíjense que ahí está el link permanente que creamos en el archivo .html junto con un Nombre característico, es decir, el nombre de la categoría.


Espero que les sirva a todos aquellos que estamos usando blogs con Jekyll+Github. Aclaro que puse a **Nano** como editor predeterminado para hacer éstos pasos pero vos podés usar el editor que prefieras.

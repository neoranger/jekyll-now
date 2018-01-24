---
layout: post
title: "Probando Jekyll-Tool: script para crear posts en Jekyll de manera super fácil"
date: 2017-12-08 
type: post
published: true
status: publish
categories: [Aporte]
tags: [jekyll, script]
author: "neositelinux"
image: ""
---

Hoy les traigo un post super corto pero que les va a solucionar el trabajo a más de uno. Se trata de una herramienta creada por un desarrollador el cual es un script para armar un post y la cabecera del mismo de una manera super intuitiva y sin tener que estar copiando y pegando de otros posts o, como hago yo, tener un archivo aparte preparado con una cabecera para copiar y pegar.

Esta herramienta llamada [Jekyll Tool](https://github.com/Energy1011/jekyll-tool-sh), fue creada por [Energy1011](https://energy1011.github.io/monsterpenguin/), usuario también del grupo de Telegram [Experimenta con Jekyll](https://t.me/experimentaconjekyll) donde compartimos dudas, sugerencias y demás cosas, un grupo muy ameno donde todas las opiniones son bienvenidas.

### Seteando la herramienta

Una vez que descargamos el script, lo ponemos en el directorio raíz de nuestro repositorio que tenemos creado para nuestro blog con Jekyll y lo ejecutamos de la siguiente manera:

`./jekylltool.sh`

Se abrirá la herramienta y al ser la primera vez que la ejecutamos nos pedirá la ruta completa del directorio (incluso con la / para que acceda correctamente) de posts que tenemos en nuestro repositorio:

<p align="center">
<img src="/images/jekylltool1.png" alt="_Logo">
</p>

Una vez que ingresemos la ruta procederemos a poner el nombre del autor de los posts el cual estará puesto por defecto:

<p align="center">
<img src="/images/jekylltool2.png" alt="_Logo">
</p>

Haciendo ésto terminará de configurarse el script con esos datos básicos los cuales los tomará de un archivo que se creará en la home de nuestro sistema con el nombre **.jekylltool** en el cual estará esa configuración y que si la queremos cambiar es solo cuestión de editar ese archivo y listo.

### Creación de un post con Jekyll Tool

Una vez que tenemos la configuración de la herramienta hecha, ahora es hora de crear un post. Para eso vamos a ejecutar el script nuevamente pero con el parámetro "-c" y el nombre del post entre comillas dobles. De ésta manera:

<p align="center">
<img src="/images/jekylltool3.png" alt="_Logo">
</p>

Al hacer Enter vamos a llenar una serie de campos tales como la imagen de portada, el tipo de entrada, la categoría de la entrada, los tags, si se va a publicar o no, etc. Quedando algo así:

<p align="center">
<img src="/images/jekylltool4.png" alt="_Logo">
</p>

Si todo está correcto le damos a la *Y* o sino le damos a la *N* para cambiarlos. Si todo está Ok nos va a crear el archivo y nos da la opción de editar el mismo con VIM un editor por consola ideal para éstos casos en que uno no quiere levantar las manos del teclado.

<p align="center">
<img src="/images/jekylltool5.png" alt="_Logo">
</p>

### Post creado con la herramienta

Así queda el post creado y listo para ser escrito:

<p align="center">
<img src="/images/jekylltool6.png" alt="_Logo">
</p>

Espero que los que usen Jekyll para sus blogs puedan aprovechar ésta herramienta al máximo tal y como yo lo voy a hacer.

**NOTA: EL SCRIPT SE VA A IR ACTUALIZANDO A LO LARGO DEL TIEMPO POR LO QUE LES SUGIERO QUE SE CLONEN EL REPOSITORIO DE GITHUB PARA MANTENER LA HERRAMIENTA ACTUALIZADA.**
---
layout: post
title: "Conky Manager - Configurá tu Conky de manera muy facil"
date: 2013-07-26
author: neoranger
comments: true
categories: [Aporte]
---

Conky Manager es un gestor con interfaz grafica que te permite configurar tus scripts de Conky de manera sencilla. Conky Manager es lo que necesitaba Conky desde el inicio de los tiempos.
Conky Manager fue creado por Tony George y publicado en su blog teejeetech, esta escrito en Vala y GTK3.
Para quienes no sepan, Conky es un programa en Linux que nos permite tener elementos de monitoreo del sistema en nuestro escritorio. Desde siempre los linuxeros lo han alabado, pero al mismo tiempo, lo ridículamente complejo de su instalación y manejo de scripts, han hecho que muchos usuarios terminen por descartarlo, y muchas personas ni tan siquiera sean capaces de intentar “meterse con esas cosas”.
Sin Conky Manager, instalar Conky, configurar y editar un script, iniciar Conky con el sistema, lograr tener múltiples scripts de Conky corriendo a la vez… todo Conky en general, era un dolor de cabeza terrible para un usuario no avanzado.
Conky Manager te permite:

Iniciar y detener Conky en un solo click
Hacer que Conky arranque con el sistema
Cambiar la posición, transparencia y tamaño de cualquier widget de Conky.
Instalar múltiples temas y seleccionar cuales mostrar de manera super sencilla.
Instalación

Conky Manager puede ser instalado en Ubuntu/Debian y todos sus derivados (Linux Mint, Xubuntu, Kubuntu, elementary OS, etc.), y Arch Linux.
Debian/Ubuntu

Si usas Ubuntu 12.04 (precise), 12.10 (quantal), 13.04 (raring), 13.10 (saucy) o sus derivados, puedes instalar Conky Manager añadiendo el siguiente repositorio:
Abre una terminal y escribe:

```
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install conky-manager
```

También puedes descargar el paquete DEB desde LaunchPad

#### Arch Linux

En Arch Linux puedes instalar Conky Manager usando AUR:
`yaourt -S conky-manager-bzr`

#### Aspectos Básicos

Una vez instalado, Conky Manager creara una carpeta dentro de tu sistema llamada Conky-manager ubicada en /home/usuario/

![_Logo]({{ site.baseurl }}/images/conky1.jpg)

Dentro de esta carpeta se encuentran los temas que vienen pre instalados y otros archivos de configuración.
Al iniciar Conky Manager veremos una ventana cuya interfaz esta dividida en pestañas:

![_Logo]({{ site.baseurl }}/images/conky2.jpg)

En la pestaña Themes encontramos la lista de los temas instalados, para iniciar una configuración simplemente marcamos el checkbox que se encuentra a la derecha.
Si el tema consta de varias configuraciones, entonces veremos los diferentes scripts debajo, en el área que dice **“Widget“**. Podemos marcar y desmarcar elementos individualmente, y veremos los cambios de inmediato en nuestro escritorio.

![_Logo]({{ site.baseurl }}/images/conky3.jpg)

También puedes previsualizar el tema, seleccionándolo y haciendo click en **“Preview”** para que se abra en una ventana sin necesidad de aplicarlo antes.

![_Logo]({{ site.baseurl }}/images/conky4.jpg)

En la pestaña **“Edit”** tenemos un menú desplegable que nos permite elegir el tema que queremos editar, y podemos cambiar en las opciones aspectos como el tamaño, la transparencia, la posición, y el formato de la hora y de las redes.

![_Logo]({{ site.baseurl }}/images/conky5.jpg)

En la pestaña **“Options”** podemos elegir si queremos que Conky arranque con el sistema. Importar paquetes de temas y matar el proceso de Conky.

![_Logo]({{ site.baseurl }}/images/conky6.jpg)

La pestaña **“About”** es la información sobre la versión y el autor.

![_Logo]({{ site.baseurl }}/images/conky7.jpg)

#### Instalar temas adicionales

Los scripts de Conky que maneja Conky-manager tienen que estar empacados bajo ciertas normas, no te sirve bajar cualquier configuración de Conky que consigas y pegarla en la carpeta. No funcionara.
Pero no hay que llorar, en el blog de [Tony](http://teejeetech.blogspot.in/) hay bastantes packs nuevos con muchos scripts para descargar.
También puedes visitar la comunidad de Google+ de [Eye Candy Linux](https://plus.google.com/u/0/communities/104794997718869399105) donde constantemente publican temas de Conky para Conky Manager.

Un tema de Conky Manager es un archivo 7zip con una extensión .cmtp.7z que contiene dentro las siguientes carpetas:

1. Fuentes: que serán copiadas a tu carpeta ~/.fonts cuando el pack se importe.
2. Themes: estos son los temas y serán copiados a tu carpeta ~/conky-manager/themes
3. Cualquier otra carpeta llamada conky, .conky sera copiada a tu carpeta Home.
4. Un archivo “ReadMe” con instrucciones de instalación y creditos del autor.


![_Logo]({{ site.baseurl }}/images/conky8.jpg)

Puede pasar que en algunos sistemas una que otra configuración no funcione.

Si bien la mayoría de los temas son bastante pasados de moda y… feos. Hay unos cuantos que están muy bien hechos y valen la pena. Por otro lado constantemente se estan armando packs de Conkys para gestionarlos con Conky Manager y cada vez tenemos mas opciones.
Sin duda esta es una herramienta con la que soñé por mucho tiempo y gracias a la gente de la comunidad es una realidad.

[FUENTE](http://artescritorio.com/conky-manager-es-todo-lo-que-necesitas-para-gestionar-conky-sin-morir-en-el-intento)

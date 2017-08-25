---
layout: post
title: "Creando nuestro propio pad libre con Etherpad para trabajo colaborativo"
date: 2017-08-23
author: neositelinux
comments: true
categories: [Informacion, Aporte]
---

![_Logo ]({{ site.baseurl }}/images/etherpad_nsl.jpg)

Hace un rato estuvimos barajando, con los colaboradores del [Maratón Linuxero](https://maratonlinuxero.github.io), de buscar otra opción a usar Google Docs ya que el formato que utiliza es privativo y como queremos demostrar que con GNU/Linux si se puede, decidimos montar un Etherpad en el VPS donde tenemos armado el servidor Jitsi para el día de el Maratón demostrando que podemos organizar todo con software libre.

Con [Etherpad](https://github.com/ether/etherpad-lite) podemos generar documentos colaborativos sin requerimiento de logueo previo (aunque se puede configurar para tener una mayor seguridad) y de una manera super fácil. Lo que vamos a hacer hoy es instalar de manera local a Etherpad para poder usarlo como servidor de trabajo.

Algunos requisitos antes de instalar Etherpad son:
* [Instalar NodeJS](http://nodejs.org/)
* Instalar Git (el paquete es `git` en cualquier distribución)
* Se recomienda crear un usuario específico para ésto para no tener problemas.

### Empezamos con la instalación de Etherpad:

1. Como root instalar: 
* `apt-get install gzip git curl python libssl-dev pkg-config build-essential` **(seguramente algunos paquetes ya deben estar instalados)**
2. Vamos a movernos a la carpeta /opt y crearemos un directorio para alojar Etherpad ahí mismo:
* `cd /opt`
* `mkdir etherpad`
3. Lo que haremos ahora será clonar el repositorio de Etherpad en Github en el directorio creado (por eso necesitamos tener instalado git de antemano):
* `git clone git://github.com/ether/etherpad-lite.git `
4. Ingresamos al directorio etherpad-lite que acabamos de clonar:
* `cd etherpad`
* `cd etherpad-lite`
5. Ejecutamos el servidor:
* `./bin/run.sh`

Una vez que lo ejecutamos vamos a poder ingrear a nuestro etherpad de manera local utilizando la URL: `http://127.0.0.1:9001/`. Esta URL obviamente solo puede verse en la red local en donde estemos. Si queremos utilizar etherpad de manera pública deberíamos tener una IP publica (si es fija mejor, así no tenés que estar cambiando en la configuración todo el tiempo) la cual tenemos que configurar o mejor tener un dominio propio.

Para configurar Etherpad como querramos deberemos editar el archivo **settings.json** en el cual podemos cambiar desde el nombre de nuestro servidor así como cualquier parámetro de configuración o seguridad que tiene Etherpad.

Recomiendo mucho que lo prueben (si quieren pueden hacerlo en una máquina virtual solo para probar) ya que es excelente para trabajar en equipo y viene muy bien para aprender un poco más sobre la ofimática libre.

Lo bueno que tiene es que Etherpad [se nutre de plugins](https://static.etherpad.org/plugins.html) que crea la comunidad, por lo que podemos darle muy buenas funciones a nuestro servidor Etherpad gracias al Plugin Manager, como por ejemplo:
* Lista de Pads
* Administración de Pads (no, no viene por defecto)
* Embeber archivos multimedia
* Inserción de archivos
* Soporte para Markdown
* Login (para que tenga un poco de seguridad)
* Chats On/Off
* Soporte para Copiar, Pegar, Buscar y Reemplazar
* Dibujos colaborativos (al estilo pizarrón)
* Y un largo etcétera...

![_Logo ]({{ site.baseurl }}/images/etherpad_nsl2.jpg)


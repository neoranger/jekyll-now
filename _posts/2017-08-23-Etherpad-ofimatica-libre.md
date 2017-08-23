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

### Empezamos con la instalación de Etherpad:

1. Como root instalar: `apt-get install gzip git curl python libssl-dev pkg-config build-essential` (seguramente algunos paquetes ya deben estar instalados)
2. Vamos a movernos a la carpeta /opt y crearemos un directorio para alojar Etherpad ahí mismo:
`cd /opt`
`mkdir etherpad`
3. Lo que haremos ahora será clonar el repositorio de Etherpad en Github en el directorio creado (por eso necesitamos tener instalado git de antemano):
`git clone git://github.com/ether/etherpad-lite.git `
4. Ingresamos al directorio etherpad-lite que acabamos de clonar:
`cd etherpad`
`cd etherpad-lite`
5. Ejecutamos el servidor:
`./bin/run.sh`

Una vez que lo ejecutamos vamos a poder ingrear a nuestro etherpad de manera local utilizando la URL: `http://127.0.0.1:9001/`. Esta URL obviamente solo puede verse en la red local en donde estemos. Si queremos utilizar etherpad de manera pública deberíamos tener una IP publica (si es fija mejor, así no tenés que estar cambiando en la configuración todo el tiempo) la cual tenemos que configurar o mejor tener un dominio propio.

Para configurar Etherpad como querramos deberemos editar el archivo **settings.json** en el cual podemos cambiar desde el nombre de nuestro servidor así como cualquier parámetro de configuración o seguridad que tiene Etherpad.

Recomiendo mucho que lo prueben (si quieren pueden hacerlo en una máquina virtual solo para probar) ya que es excelente para trabajar en equipo y viene muy bien para aprender un poco más sobre la ofimática libre.

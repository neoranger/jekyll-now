---
layout: post
title: Querés comodidad?? Alias para los comandos
date: 2013-02-25
author: neoranger
comments: true
categories: [General, Informacion]
---
Estás cansado de tener que tirar lineas un poco largas de código a la hora de instalar un programa, actualizar los repositorios o actualizar el sistema?? Acá tenés unos sencillos pasos que te van a ayudar mucho en tu trabajo diario.

Lo que vamos a usar se llaman "Alias". Que es un alias?? Es simple, un sobrenombre para un comando determinado, por ejemplo, a la hora de actualizar los repositorios.

Si queremos actualizar nuestros repos y nuestro sistema de una vez, tenemos que hacer el siguiente comando (en un sistema basado en debian):
<blockquote>"sudo apt-get update &amp;&amp; sudo apt-get upgrade"</blockquote>
Si queremos tener un comando mas cómodo para hacer esto y no tener que estar escribiendo toda la linea de comando completa, vamos a hacer lo siguiente:

1. Abrimos el archivo .bashrc:
<blockquote>nano .bashrc</blockquote>
2. Escribimos la línea(s) de nuestro(s) alias (en las líneas superiores a las opciones PS1):
<blockquote>alias palabra='comando' / alias actualizar='sudo apt-get update'</blockquote>
3. Guardamos el archivo con Ctrl + O (en caso de usar nano).

Ahora escribimos palabra en la terminal y se ejecutara el comando elegido. En el caso de que el comando no funcione, lo mas probable es que se tenga que reiniciar el sistema.

Algunos ejemplos de comandos en Ubuntu:

Actualizar el sistema :
<blockquote>alias actualizar='sudo apt-get update &amp;&amp; sudo apt-get upgrade'</blockquote>
Instalar un programa/paquete :
<blockquote>alias instalar='sudo apt-get install'</blockquote>
Nota: Lo usamos así: instalar "paquete"

Desinstalar un programa/paquete [desinstalar]:
<blockquote>alias desinstalar='sudo apt-get purge'</blockquote>
Nota: Lo usamos así: desinstalar "paquete"

Nautilus con permisos de superusuario [nautilus+]:
<blockquote>alias nautilus+='sudo nautilus'</blockquote>
Nota: También podéis usar nautilus + directorio

Ejemplos en ArchLinux:

Actualizar el sistema:
<blockquote>alias actualizar='sudo pacman -Syu'</blockquote>
Instalar un programa/paquete :
<blockquote>alias instalar='sudo pacman -S'</blockquote>
Nota: Lo usamos así: instalar "paquete"

Desinstalar un programa/paquete [desinstalar]:
<blockquote>alias desinstalar='sudo pacman -Rsn'</blockquote>
Nota: Lo usamos así: desinstalar "paquete"

El nombre del Alias puede ser cualquiera que ustedes quieran, no hace falta que tenga el nombre haciendo referencia a lo que se hace (lo que si es recomendable).

También cabe aclarar que al generar el alias no queda invalidado el comando principal del sistema sino que tambien puede usarse (sino sería un peligro).
No se preocupen que a la hora de poner su alias, si este necesita de permisos de administrador el sistema lo va a pedir como si escribieramos el comando de la manera normal.

Espero que les guste este tip y que si lo usan pueden comentarnos.

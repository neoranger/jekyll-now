---
layout: post
title: "Como limpiar la basura residual en Ubuntu y derivadas"
date: 2017-11-16
author: neositelinux
comments: true
categories: [Aporte]
---

Hace unos días, hablando con un usuario por Telegram de videojuegos en GNU/Linux, mapeo de joysticks genéricos, el podcast y demás, salió el tema de Manjaro y Plasma contra Ubuntu y Unity. Algo de lo que hablé en mi [último podcast](https://neositelinux.com/podcast-volviendo-a-las-raices/). A raíz de eso, comenzamos a compartir algunos comandos.

Este usuario me compartió uno muy interesante que lo que hace es limpiar toda la basura residual que queda cuando uno elimina un paquete/programa/aplicación. Muchas veces quedan librerías obsoletas o directorios sin usar o dependencias específicas que no se van a usar más. Con éste comando podemos limpiar todo eso:

> sudo dpkg --purge `dpkg -l|egrep ^rc|cut -d' ' -f 3`

Lo he probado en Ubuntu y funciona perfecto. Me ha borrado bastante basura residual. Te animo a probarlo y que nos comentes la experiencia. Si funciona en Ubuntu probablemente funcionará igual de bien en sus derivadas.

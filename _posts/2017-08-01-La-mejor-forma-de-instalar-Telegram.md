---
layout: post
title: La mejor forma de instalar Telegram en nuestra distribución GNU/Linux
date: 2017-08-01
author: neoranger
comments: true
categories: [Aporte]
---

Existen varias formas de como instalar Telegram en nuestra distro.Tenemos los paquetes binarios en cada distro, los paquetes comprimidos, paquetes de terceros, etc.

Hoy les quiero mostrar en solo 5 pasos para hacerlo de forma rápida y eficiente.

# Comencemos

# Paso 1: Descargar el paquete desde la web oficial
### Paquete 32 bits:
`$ wget https://telegram.org/dl/desktop/linux32`

### Paquete 64 bits:
`$ wget https://telegram.org/dl/desktop/linux`

# Paso 2: Descomprimir el archivo descargado
`$ tar -xvf (linux32 o linux dependiendo de la arquitectura)`

# Paso 3: Mover el directorio descomprimido
`$ mv Telegram  home/USUARIO/.local/share/applications`

# Paso 4: Acceder al directorio que acabamos de mover
`$ cd home/USUARIO/.local/share/applications/Telegram`

# Paso 5: Ejecutar Telegram
`$ ./Telegram`

Una vez que lo ejecutamos, se generará el ícono correspondiente en nuestro sistema. Para acceder al mismo cerramos Telegram totalmente y accedemos de forma normal.

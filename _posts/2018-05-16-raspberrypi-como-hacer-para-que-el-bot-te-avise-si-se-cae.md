---
layout: post
title: "Como hacer para que tu bot te avise si se cae"
date: 2018-05-16
type: post
published: true
status: publish
categories: [Informacion, RaspberryPi]
tags: [gnulinux, linux, gnu linux, Telegram, RaspberryPi]
author: "neoranger"
image: ""
---

Hace bastante tiempo les mostraba como [crear un bot para Telegram](https://neositelinux.com/techcreando-un-bot-para-telegram/), incluso como [retocarlo](https://neositelinux.com/tech-retocando-nuestro-bot-de-telegram/), y mejor aún, como [securizarlo para tener mayor seguridad](https://neositelinux.com/tech-securizando-un-bot-de-telegram/), incluso hicimos un script por si el bot se cae [que se vuelva a levantar por si solo](https://neositelinux.com/aporte-script-de-ejecucion-para-que-no-se-caiga-el-bot-de-telegram/). A todo ésto podemos añadirle una función más, el aviso de la caída del bot por medio de un email.

Supongamos que tenemos nuestro bot armado en nuestra RaspberryPi (lo que sería ideal ya que para que ésto funcione el bot tiene que estar andando y que mejor que tenerlo 24/7 en nuestra Pi), por lo que vamos a usar Raspbian como sistema operativo de ejemplo, pero quedate tranquilo que podés hacer ésto en todas las distros GNU/Linux.

### Empezamos actualizando el sistema
Por las dudas, tengamos el sistema actualizado por cualquier cosa.

* `sudo apt update && sudo apt upgrade`

### Instalando servicios necesarios
Vamos a instalar las herramientas ssmtp y mailutils:

* `sudo apt install ssmtp`
* `sudo apt install mailutils`

Una vez que hayamos instalado éstas herramientas, vamos a proceder a configurar ssmtp.

### Configurando servidor SMTP
Para ésto, lo mejor es usando una cuenta de gmail ya que no tiene vueltas a la hora de poder enviar o recibir correos electrónicos, por lo que usaremos su servidor SMTP.

* `sudo nano /etc/ssmtp/ssmtp.conf`

Vamos a añadir o modificar las siguientes lineas en el archivo .conf:

* root=postmaster
* mailhub=smtp.gmail.com:587 
* hostname=raspberrypi
* AuthUser=nuestrousuario@gmail.com
* AuthPass=contraseñagmail
* UseSTARTTLS=YES

La contraseña va así en texto plano. Hay que tener en cuenta que si estás **usando la autentificación de 2 pasos** vas a tener que crear una **contraseña de aplicación** que la gente de Google te da. Es una contraseña alfanumérica de 16 caracteres que sirve, justamente para usar nuestro servicio de Google en otras aplicaciones si tener que pasar por la autentificación de 2 pasos.

La linea **rewriteDomain=your.domain** sirve por si usás Google Apps y quieres que el dominio remitente del correo coincida con el de gmail, por ejemplo, podés poner neositelinux.com si tu correo viene desde ese sitio.

La linea **FromLineOverride=YES** sirve para que SSMTP no modifique las lineas del from cuando envía los correos. Si está en NO el correo saldrá con el nombre de usuario que estamos usando en la distro (por ejemplo, root).

### Editando los alias
Lo que vamos a hacer ahora es agregar una linea al archivo de alias, para ésto tenemos que editar el archivo:

* `sudo nano /etc/ssmtp/revaliases`

A éste arhivo vamos a agregar la siguiente linea:

* `root:nuestrocorreo@gmail.com:smtp.gmail.com:587`

Acá el usuario que va a enviar los correos será root.

Una vez hecho ésto ya estamos listos para probar el envio de correo electronico cuando nuestro bot se caiga.

### Editando el script de ejecución del bot
Para que mande el correo cuando el bot se caiga lo que vamos a hacer es editar el [script de ejecución que creamos para nuestro bot](https://neositelinux.com/aporte-script-de-ejecucion-para-que-no-se-caiga-el-bot-de-telegram/).

**Vamos a agregar la linea de envío de email en el paso de caída del bot**

La línea sería:
`echo "ManjaroBot is crashed" | mail -s "Aviso" tucorreo@gmail.com`

Donde lo que va entre commilas dobles con el echo es el cuerpo del correo. Después del pipe le indicamos el comando **mail** que vamos a usar con el parámetro -s el cual hace que le demos un asunto al email, en éste caso sería **Aviso** y al final el correo electrónico a donde queremos que llegue el aviso. Así cada vez que se caiga el bot (cuidado que si tenemos muchas caídas no nos van a parar de llegar emails) nos llegará en email con el aviso de la caída.

El script de ejecución quedaría algo así:

```
#!/bin/bash
while true
do
python bot.py     (archivo.py que ejecuta el bot)
echo "¡The bot is crashed!"
echo "ManjaroBot is crashed" | mail -s "Aviso" tucorreo@correo.com
echo "Rebooting in:"
for i in 1
do
echo "$i..."
done
echo "###########################################"
echo "#Bot is restarting now #"
echo "###########################################"
done
```
Cuando nos llegue el email quedará algo así:
<p align="center">
<img src="/images/aviso_email.JPG" width="300" height="500" alt="_Logo">
</p>


Espero que lo puedan probar y que me comenten que les parece.

Seguinos en las redes sociales:
* Twitter: [@NeoSiteLinux](https://twitter.com/neositelinux)
* Facebook: [NeoSiteLinux](https://facebook.com/neositelinux)
* Telegram (canal): [@NeoSiteLinux](https://t.me/neositelinux)
* Telegram (canal de audios): [@NeoSiteLinuxPodcast](https://t.me/neositelinuxpodcast)
* Youtube: [NeoSiteLinux](https://www.youtube.com/user/neositelinux)
* Patreon: [NeoSiteLinux en Patreon](https://www.patreon.com/NeoSiteLinux)
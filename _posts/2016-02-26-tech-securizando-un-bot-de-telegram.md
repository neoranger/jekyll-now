---
layout: post
title: Securizando un bot de Telegram
date: 2016-02-26
author: neoranger
comments: true
categories: [Tecnologia]
---
<img class="  wp-image-2873 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/telegram-buttom.png" alt="telegram-buttom" width="297" height="292" />

A raíz de un <a href="http://portallinux.es/raspberry-pi-notifica-cualquier-cosa-por-telegram/">post del compañero bloguero Zagur</a>, decidi tomar el mismo proyecto y usarlo para motivos personales.
Por si no saben, el proyecto de Zagur fue crear un bot de Telegram el cual esté corriendo en su RaspberryPi con el fin de mandarle comandos al bot y que el bot a su vez interactúe con el sistema devolviendo información al respecto.

Les doy un ejemplo, si queremos saber cuanto tiempo hace que la Raspberry esta prendida, le mandamos al bot el comando <strong>/uptime</strong> y éste a su vez ejecuta el comando <strong>uptime</strong> en el sistema y devuelve la información a Telegram. Todo esto de forma remota desde cualquier parte donde tengas tu cuenta de Telegram configurada y una conversación abierta con el bot.

Se pueden hacer muchísimas cosas con esto, por lo que me propuse primero que nada, darle algo de seguridad al bot ya que si lo tengo corriendo en mi RaspberryPi <strong>cualquier persona puede acceder al bot</strong> (si es que conocen el nombre), usarlo e incluso hacer cosas que no deberían ya que trabaja como si fuera un servidor que desde Telegram se puede acceder. (Quedó claro el ejemplo?)

Como no soy un experto programador en Python, estuve varios días probando diferentes métodos para securizar el bot hasta que finalmente he encontrado la solución.

Todo usuario de Telegram tiene una ID única que lo identifica por lo que tenía que hacer era que al entablar una conversación con el bot (chat normal individual) éste obtuviera mi ID única (o cualquier ID que reciba de cualquier usuario) cuando se la mande un comando.
Esto ya lo venía haciendo pero con el chat ID de cada usuario el cual es un problema ya que esa ID cambia si es un chat individual (ID con números positivos) que cuando es una chat grupal (ID con números negativos).

En vez de esto, tomamos, como lo nombré antes el User ID único.

Esto lo hacemos de una manera sencilla: En cada función que hemos creado para cada comando debemos agregarle la linea: "uid = m.from_user.id" (sin comillas, obviamente), y una vez  que hacemos esto, solo tenemos que validar esa ID obtenida por nuestra ID previamente guardada en un archivo .py aparte, tal como lo hicimos con el token en el post anterior.

Les paso un ejemplo de una función completa con las validación del ID <strong>(por favor ignoren los guiones en el código, los puse mas que nada para que vean la identación del mismo ya que todavía no se poner tabulación en markdown)</strong>:

<pre><code>1-@bot.message.handler(commands=['test'])
2-def command_test(m):
3----cid = m.chat.id
4----uid = m.from_user.id
5----if  uid != user.user_id:
6--------bot.send_message(cid, "You can't use the bot")
7--------return
8-----bot.send_message(cid, "This is a test")
</code></pre>

Como pueden ver, las lineas 4, 5, 6, y 7 es el código nuevo que llevarán todas las funciones. Guardamos el user ID único de Telegram en la variable uid. Si ésta no es igual a la variable que tenemos guardada en nuestro archivo user.py retonará el mensaje "You can't use the bot" y no hará mas nada. Si la variable uid es igual a la que tenemos guardada en nuestro archivo user.py entonces se ejecutará el comando puesto.

<img class="alignnone  wp-image-2257" src="https://blogneositelinux.files.wordpress.com/2016/10/bot_test_yes.png" alt="bot_test_yes" width="308" height="68" /> <img class="alignnone  wp-image-2254" src="https://blogneositelinux.files.wordpress.com/2016/10/bot_test_no.png" alt="bot_test_no" width="292" height="67" />

Con esta simple validación podemos estar tranquilos que si tenemos nuestro bot corriendo en nuestra RaspberryPi, nosotros seremos los únicos en poder ejecutar comandos sobre la misma y obtener información desde donde sea que estemos.

PD: Obviamente hay muchas formas de securizar el bot, incluso con un nivel mucho mas alto de seguridad, pero todo eso depende del proyecto que tengas adelante o de cuanto querés romperte la cabeza pensando en como hacerlo.

PD2: Si quieren ver el código implementado en mi bot pueden clonarse mi <a href="http://github.com/neoranger/actionlauncher">repo de github</a> en sus máquinas. El codigo propuesto en esta entrada ya está modificado en el repo github mas que nada para ahorrar lineas de código. Todo lo hecho acá se puse en una función específica y en cada función de acuerdo al comando se llama a la función el cual hace la validación de la user ID. Con esto nos ahorramos el problema de escribir las lineas de código en cada una de las funciones.

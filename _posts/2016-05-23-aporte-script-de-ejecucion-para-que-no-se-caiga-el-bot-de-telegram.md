	---
layout: post
title: Script de ejecucion para que no se caiga el bot de Telegram
date: 2016-05-23
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-2873 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/telegram-buttom.png" alt="telegram-buttom" width="217" height="213" />

Es probable que si seguiste los tutoriales de <a href="http://www.neositelinux.com.ar/2015/12/02/techcreando-un-bot-para-telegram/">Como hacer un Bot para Telegram</a> y el otro en el que <a href="http://www.neositelinux.com.ar/2016/02/01/tech-retocando-nuestro-bot-de-telegram/">lo retocabamos un poco</a>, este pequeño tutorial te va a venir bien, ya vas a ver por que.

Si vos sos como yo, asi de quisquilloso a la hora de ver que ande todo lo que usas, seguramente te paso con el Bot. Estabas usandolo como todos los dias pero por alguna cosa u otra (se corto la luz en el lugar donde tenias la PC alojada con el bot, alguien mando un comando incorrecto, simplemente la API se rompió, etc.) se cayo y no tenes a mano la PC donde lo tenes alojado o acceso al VPS donde lo tenes, este script te puede salvar de eso.

Básicamente este script lo que hace es volver a ejecutar el bot en el caso de que se caiga, si, asi como lo escuchas. El script contiene un ciclo while hecho en bash el cual dentro ejecuta el bot y si por H o por B este se cae, automáticamente vuelve a levantar. Algo que nos ayuda mucho y nos da mas tranquilidad a la hora de estar haciendo otras cosas y no tener que estar tan pendientes.

El script en cuestion es este:

<code>#!/bin/bash
while true
do
python bot.py     (archivo.py que ejecuta el bot)
echo "¡The bot is crashed!"
echo "Rebooting in:"
for i in 1
do
echo "$i..."
done
echo "###########################################"
echo "#Bot is restarting now #"
echo "###########################################"
done</code>

<img class=" size-full wp-image-2798 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/script_ejecucion_bot.png" alt="script_ejecucion_bot" width="819" height="508" />

Estas pequeñas lineas de código las podemos guardar en un archivo .sh en el mismo directorio donde tenemos el bot, entonces en vez de ejecutar nuestro bot con un <strong>"python bot.py"</strong> directamente podemos hacer un ./execbot.sh (poner el nombre del archivo sh que les convenga) y listo.

Si esto lo hacemos bajo una <a href="https://es.wikipedia.org/wiki/GNU_Screen">screen</a> podemos dejar el proceso ejecutandose en background y no tendriamos problemas, el bot no se caeria nunca.

Salvando las distancias, si no tenemos mayores problemas (se rompe la PC, no tenes internet, etc.) el bot no deberia caerse nunca sino que estaria reiniciandose.

Espero que les sirva y si tienen una duda no se la guarden, sino consultenme en un comentario o pueden enviarme un email a neoranger@openmailbox.org

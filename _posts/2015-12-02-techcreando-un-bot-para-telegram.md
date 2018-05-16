---
layout: post
title: Creando un bot para Telegram
date: 2015-12-02
author: neoranger
comments: true
categories: [Tecnologia, RaspberryPi]
---
Hace unos días en un grupo de Telegram salió la idea de crear un bot a raíz de un pequeño fallo que tiene la aplicación. La administración de grupos de Telegram no es del todo buena ya que solo puede haber un admnistrador pero este admin no puede, al menos por ahora, nombrar a otra persona mas como administrador como para que haya 2 y si es un grupo grande haya un poco de moderación para que no se desbande todo. Esto en Whatsapp es totalmente funcional y común cosa que en Telegram no pasa y por esto tuvimos que mudar un grupo completo a otro porque cuando admin que estaba se fue, el que quedó asignado (por decisión de Telegram al azar, según tengo entendido) no era para nada activo, por ende, alrededor de 45 personas tuvimos que mudarnos.

**NOTA DE ACTUALIZACION #1: Esto ya no pasa ya que Telegram se ha actualizado y ya se puede tener mas de un administrador seleccionado en el grupo. Como esto lo escribi hace tiempo tengo que hacer esta aclaracion.**

Por esto empezó el tema de la creación de bot, para ver si podíamos de alguna manera u otra darle permisos de administrador a alguien mas por medio de este bot. Como estaba con un poco de tiempo me puse a investigar y al cabo de un rato concluímos que ese bot no puede crearse ya que la API de Telegram no permite hacer eso.

A todo esto yo ya había armado el bot y lo estaba preparando para tirarle código y empezar. De esta manera me encontré con un bot que no hacía nada y sobretodo que no hacía lo que habíamos pensado que haría, asi que aproveché y empecé a investigar un poco mas la API de bots de Telegram y decidí darle un uso al bot por lo menos para hacer algunas bromas en el grupo como crear el comando /windowsero y que salga una imagen de Linus Torvalds haciendo el famoso "fuck you nvidia".

<img class="  wp-image-2499 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/fuckyounvidia.png" alt="fuckyounvidia" width="337" height="261" />

**NOTA DE ACTUALIZACION #2: Me habia olvidado un paso super importante, instalar la API de Telegram en nuestro VPS o PC o donde vamos a ejecutar el bot. Tenemos 2 formas de hacerlo (Las comillas dobles omitirlas al igual que el signo $, solo esta para indicar que se tiene que hacer desde la terminal):**

<ol>
    <li>A traves del repositorio de Github:
<div class="crayon-pre">
<div id="crayon-568e67a7add78529677234-1" class="crayon-line"><span class="crayon-e">" $ <strong>git </strong></span><strong><span class="crayon-r">clone</span> <span class="crayon-v">https</span><span class="crayon-o">:</span><span class="crayon-o">/</span><span class="crayon-o">/</span><span class="crayon-v">github</span><span class="crayon-e">.com</span><span class="crayon-o">/</span><span class="crayon-v">eternnoir</span><span class="crayon-o">/</span><span class="crayon-v">pyTelegramBotAPI</span></strong><span class="crayon-e"><strong>.git</strong> "</span></div>
<div id="crayon-568e67a7add78529677234-2" class="crayon-line crayon-striped-line"><span class="crayon-r">" $ <strong>cd</strong></span> <span class="crayon-e"><strong>pyTelegramBotAPI</strong> "
</span></div>
<div id="crayon-568e67a7add78529677234-3" class="crayon-line"><span class="crayon-e">" $ <strong>python </strong></span><strong><span class="crayon-v">setup</span><span class="crayon-e">.py</span> </strong><span class="crayon-v"><strong>install</strong> "
</span></div>
</div></li>
    <li>O utilizando la herramienta de instalacion de Python:
<div class="crayon-pre">
<div id="crayon-568e67a7add89587090986-1" class="crayon-line"><span class="crayon-e">" $ <strong>pip </strong></span><strong><span class="crayon-e">install </span></strong><span class="crayon-v"><strong>pyTelegramBotAPI</strong> "</span></div>
</div></li>
</ol>

Buscando por la web encontré un ejemplo de bot que me vino de maravilla pero eso lo dejo para mas adelante. Primero les explico los pasos que hay que seguir:

<ol>
    <li>Crear el bot desde Telegram: En nuestro Telegram vamos a crear el bot con su nombre, su nick, una descripcion del mismo y algunas configuraciones opcionales. Para esto tenemos que entablar una conversacion con @BotFather, un bot el cual con una serie de comandos vamos a lograr esto. Para ver todos los comandos disponibles escribimos /help.
BotFather nos respondera con el siguiente mensaje:
<strong>They call me the Botfather, I can help you create and set up Telegram bots. Please read this manual before we begin:</strong>
<strong>https://core.telegram.org/bots</strong><strong>You can control me by sending these commands:</strong><strong>/newbot - create a new bot</strong>
<strong>/token - generate authorization token</strong>
<strong>/revoke - revoke bot access token</strong>
<strong>/setname - change a bot's name</strong>
<strong>/setdescription - change bot description</strong>
<strong>/setabouttext - change bot about info</strong>
<strong>/setuserpic - change bot profile photo</strong>
<strong>/setcommands - change bot commands list</strong>
<strong>/setjoingroups - can your bot be added to groups?</strong>
<strong>/setprivacy - what messages does your bot see in groups?</strong>
<strong>/deletebot - delete a bot</strong>
<strong>/cancel - cancel the current operation</strong>
Entonces con el comando /newbot empezaremos a crearlo.<strong> La creacion es totalmente interactiva</strong>, en ingles, pero no es problema porque las cosas que pide el BotFather para la creacion son totalmente entendibles.</li>
    <li>Una vez que tengamos nuestro bot creado (creado en el sentido de creacion por parte de Telegram, es decir, en ese momento es un bot que no hace absolutamente nada), <strong>BotFather nos dara un Token</strong> el cual es el que usaremos para poder <strong>vincular nuestro codigo fuente de programacion con el bot</strong> en cuestion creado. Este token puede tanto revocarse como crear uno nuevo en el caso que lo hayamos perdido o nos hayan querido controlar el bot porque accedieron a nuestro token de alguna forma.</li>
    <li>Ahora solo resta programar el bot. El lenguaje a utilizar es <strong>Python</strong> pero tengo entendido que en PHP tambien se puede hacer (es lo que escuche, no tengo la certeza). Claro, pero ustedes querran saber que puede hacer o no el bot, o como se tiene que programar, bueno, en la pagina de Telegram, mas precisamente en el <strong><a href="https://core.telegram.org/bots/api">apartado de su API</a></strong>, nos muestran todas las funciones que puede hacer el bot.</li>
</ol>

Les dejo un pequeño ejemplo de codigo en Python con algunas funciones que puede hacer el bot (para ver el codigo completo podes ir a mi GitHub):

```
# -*- coding: utf-8 -*-
import telebot # Librería de la API del bot.
from telebot import types # Tipos para la API del bot.
import time # Librería para hacer que el programa que controla el bot no se acabe.
import random
import datetime

TOKEN = ACA VA EL TOKEN # Nuestro token del bot (el que @BotFather nos dió).

bot = telebot.TeleBot(TOKEN) # Creamos el objeto de nuestro bot.
#############################################
#Listener
def listener(messages): # Con esto, estamos definiendo una función llamada 'listener', que recibe como parámetro un dato llamado 'messages'.
for m in messages: # Por cada dato 'm' en el dato 'messages'
cid = m.chat.id # Almacenaremos el ID de la conversación.
if m.content_type == 'text':
print "[" + str(cid) + "]: " + m.text # Y haremos que imprima algo parecido a esto -&gt; [52033876]: /start

bot.set_update_listener(listener) # Así, le decimos al bot que utilice como función escuchadora nuestra función 'listener' declarada arriba.
#############################################
#Funciones
@bot.message_handler(commands=['kick']) # Indicamos que lo siguiente va a controlar el comando.
def command_kick(m): # Definimos una función que resuelva lo que necesitemos.
cid = m.chat.id # Guardamos el ID de la conversación para poder responder.
bot.send_photo( cid, open( 'kick.jpg', 'rb')) # Con la función 'send_photo()' del bot, enviamos al ID de la conversación que hemos almacenado previamente la foto

@bot.message_handler(commands=['help'])
def command_ayuda(m):
cid = m.chat.id # Guardamos el ID de la conversación para poder responder.
bot.send_message( cid, "Comandos Disponibles: /hola /hello /kick /uppercut /hadouken /windowsero /nsa /attack /gentoo /flame /vicman /deletethat /roll /time /blogroll /tuxamigos /acerca /help")

@bot.message_handler(commands=['roll'])
def command_roll(m):
cid = m.chat.id
bot.send_message( cid, random.randint(1,6) )

#############################################
#Peticiones
bot.polling(none_stop=True) # Con esto, le decimos al bot que siga funcionando incluso si encuentra algun fallo.
```

El ejemplo que estoy mostrando basicamente hace 3 cosas, el primer ejemplo (comando /kick) manda una imagen (en este caso de alguien pateando), el segundo ejemplo es la respuesta al comando /help en el que nos indicara los comandos disponibles que tiene el bot (estos se van agregando a mano) y el tercer ejemplo es haciendo uso de la instruccion random.randint de Python la cual (previamente configurada) con el comando /roll nos dara el resultado de la tirada de un dado de 6 caras (en este caso pero pueden ser mas).

Si queres que tu bot mande cualquier otro mensaje u otra imagen, solo es cuestion de copiar y pegar el comando, modificarle el nombre de la funcion, el nombre del comando (obviamente no puede haber dos iguales) y el nombre de la imagen, en el caso del ejemplo, a enviar. Acordate que en el apartado oficial de la API de Telegram que te deje mas arriba, tenes todas las funciones que podes hacer con el bot creado. Desde un juego hasta un servicio social.

<img class="  wp-image-2595 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/kick.png" alt="kick" width="376" height="301" />

Seguramente te preguntaras donde esta alojado el bot para que funcione. Bueno, yo te puedo dar 2 ejemplos para poder utilizar el bot:

<ol>
    <li>Podes tenerlo alojado en tu propia PC, ordenado en una carpeta con el codigo, las imagenes que mandas dependiendo el comando del bot, etc. Teniendo en cuenta que deberias tener una terminal abierta constantemente ejecutando el archivo.py que contiene el comando del bot.</li>
    <li>O podes, como es mi caso, tenerlo alojado en un VPS ejecutandose constantemente sin que se caiga nunca ya que podes usar el comando "screen" para tenerlo corriendo en background.</li>
</ol>

La segunda opcion es sugerida si y solo si, ya tenes un VPS desde hace tiempo, porque no creo que quieras pagar un VPS solo para tener un Bot de Telegram que manda imagenes, estamos de acuerdo que eso es una locura no?
Lo que podes hacer para probarlo fuera de tu PC es usar el sitio <a href="https://c9.io">https://c9.io</a> el cual te da un VPS de manera gratuita para que puedas deployar cualquier proyecto que quieras (eso si, si el VPS no tiene actividad se apaga automaticamente, es la contra que tiene por ser gratuito, pero funciona perfecto).

Ejemplos de comandos:
<img class="  wp-image-2301 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/comandos.png" alt="comandos" width="396" height="364" />

Si queres probar mi Bot para ver como es el tema de la interaccion podes agregarlo a un chat de Telegram por su nombre de usuario @RootAdminBot (el nombre fue pensado por lo que comentaba al principio del post, asi que quedo ese nombre, me da fiaca cambiarlo).

Espero que te haya gustado y si te animas a crear tu propio bot esperamos tus comentarios. Si hay algo que no entendiste o necesitas que te lo explique mas detalladamente podes escribirme a <a href="mailto:neoranger@disroot.org">neoranger@disroot.org</a>

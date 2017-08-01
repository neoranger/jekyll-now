---
layout: post
title: Retocando nuestro Bot de Telegram
date: 2016-02-01
author: neoranger
comments: true
categories: [Tecnologia]
---
<img class="  wp-image-2873 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/telegram-buttom.png" alt="telegram-buttom" width="244" height="240" />

Hace unas cuantas semanas les había explicado <a href="http://www.neositelinux.com.ar/2015/12/02/techcreando-un-bot-para-telegram/">como crear un bot de Telegram</a>. En esa entrada lo que hicimos fue como se dice en la jerga de los programadores "hardcodear" nuestro Token que nos da @BotFather, es decir, meter a mano en una variable el token para que después se vincule el bot con nuestro código y se pueda usar.

Haciendo esto tenía un problema, al querer guardar y dejar mi código en Github tenía que, una vez pusheado el código, modificar en Github el token, sacándolo ya que cualquiera podría tomar el control sobre mi bot con ese Token (a menos que cambie el nro de token constantemente).

Esto era algo que me molestaba mucho, asi que investigué un poco (perdón a los programadores mas expertos de Python, como yo estoy empezando esto no lo sabía) y vi que podía crear un archivo .py aparte para usarlo como librería y guardar mi token ahí y al hacer un push de mi código no tengo que modificar nada en el archivo sino que solamente no tengo que pushear esa librería creada o en todo caso agregarla al archivo .gitignore para que git ni siquiera me pregunte que quiere que haga con ese archivo.

Asi que les voy a mostrar como hacer eso:

<ol>
    <li>Vamos a crear un archivo llamado <strong>token.py</strong> el cual solo contendrá nuestro token guardado en una variable, de la siguiente manera: <strong>token_id='el token propiamente dicho con comillas simples'</strong></li>
    <li>En nuestro archivo <strong>commands.py</strong> o el archivo principal que creamos para el bot vamos a importar nuestro archivo como librería escribiendo: <strong>import token</strong>
Esto lo escribimos debajo de los mismos import que tenemos anteriormente en el código.</li>
    <li>En nuestra varible TOKEN que habíamos creado vamos reemplazar el token puesto por la variable de nuestra librería creada. Por ejemplo: <strong>TOKEN = token.token_id</strong>
Esto hace que llamemos a la librería y con el punto indicamos que variable de la librería queremos.</li>
</ol>

Guardamos y listo. Podemos commitear nuestro código sin tener que estar cambiando el token después y ver que nadie nos lo robe. Al no tener datos constantes impuestos hace también que el código pueda ser reutilizado de una manera muy sencilla para otras cosas.

Les recomiendo tambien chequear el post de <a href="http://portallinux.es/author/zagur/">@Zagur</a> el cual nos enseña como <a href="http://portallinux.es/raspberry-pi-notifica-cualquier-cosa-por-telegram/">utilizar un bot para poder ejecutar scripts bash</a> o incluso comandos en nuestras distros linux.

Les dejo algunas imágenes para que vean los resultados:

Paso 1 - Archivo token.py:
<img class="  wp-image-2886 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/token1.png" alt="token1" width="314" height="75" />

Paso 2 - Se importa la librería creada:
<img class="  wp-image-2888 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/token2.png" alt="token2" width="245" height="198" />

Paso 3 - Se ingresa la variable creada en el archivo token.py en nuestro código principal
<img class="  wp-image-2890 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/token3.png" alt="token3" width="266" height="45" />

Ante cualquier duda pueden dejarme cualquier comentario o pueden enviarme un mail a neoranger@openmailbox.org

---
layout: post
title: Ejecuta procesos en segundo plano gracias a Screen
date: 2016-10-17
author: neoranger
comments: true
categories: [Aporte]
---
Me atrevo a decir que la mayoría de los usuarios de los sistemas GNU/Linux (sea cual sea la distro) desconocemos una gran parte de los comandos del sistema.

Primero porque mucho de los comandos nos son irrelevantes ya que se usan para tareas específicas y para un trabajo específico. Otras veces los desconocemos por el siemple hecho de no saber que existen.

Uno de esos comandos es <strong>Screen</strong>. Screen en realidad no solo es un comando sino es una aplicación que viene por defecto en la mayoría de las distribuciones GNU/Linux, y no me atrevo a decir en todas, porque no conozco todas.

Que hace screen? Simple, nos da la posibilidad de generar una terminal alternativa ejecutándose en primer o segundo plano.

<!--more-->

Y de qué me sirve eso? Bueno, pensá por ejemplo lo siguiente: Estás en la casa de un amigo y te olvidaste de ejecutar un proceso en tu PC de tu casa, por ejemplo un bot de Telegram. Entonces te conectás a tu PC desde la de tu amigo vía SSH. Como el bot de Telegram se ejecuta continuamente, necesitás tener una terminal abierta constantemente, pero, ¿como hacés estando afuera de tu casa?. Generás una screen, ejecutás el bot tranquilamente, dejás corriendo el proceso en segundo plano haciendo el dettach de la screen (ya les voy a mostrar como), te desconectás en la PC de tu amigo y listo. Solucionado.

Antes de que me maten, les voy a explicar como hacer eso de una manera sencilla.

<span style="text-decoration:underline;"><strong>Creando una Screen:</strong></span>
La creación de una screen es súmamente fácil. Lo conveniente es darle un nombre a cada Screen más que nada para tener un orden y saber que se está ejecutando. El comando para crear una screen es el siguiente:

<img class="  wp-image-3207 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/screen1.png" alt="screen1" width="611" height="54" />

Con ese comando vamos a tener creada una screen con el nombre <strong>prueba_bot</strong> a la cual instantáneamente vamos a acceder.

Al estar dentro de la screen vamos a poder trabajar de manera totalmente normal. Asi que, supongamos que ejecutamos un proceso que está constantemente ejecutàndose, como un bot de Telegram. Si llegamos a cerrar esa terminal el proceso se va a terminar como si se tratara de cualquier otra terminal, pero eso es algo que no queremos, entonces, lo que vamos a hacer es mandar esa screen a segundo plano. Cómo? Haciendo un Detach. Esto se hace con una combinación de teclas, las cuales son:

<blockquote>Ctrl+a (el sistema esperará a que presiones una tecla). Presiona la letra d la cual hará el detach</blockquote>

Con ésto volveremos a la terminal principal y vamos a ver un mensaje parecido a ésto:

<img class="  wp-image-3226 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/screen2.png" alt="screen2" width="484" height="65" />

Nótese que el nombre de la screen que acabamos de detachear (si, conjugué una palabra que no existe porque está en inglés, jeje) es el que nosotros le pusimos.

<span style="text-decoration:underline;"><strong>Listando screens creadas:</strong></span>
Ahora, si tenemos más de una, como sabemos cuales son o cuántas son? Con el comando:

<img class="  wp-image-3239 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/screen3.png" alt="screen3" width="550" height="167" />

El parámetro <strong>-list</strong> nos va a listar todas las screens que tengamos creadas y nos dirá el estado en el que está como lo muestra la siguiente imagen:

<img class="  wp-image-3244 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/screen4.png" alt="screen4" width="556" height="160" />

Ahí vemos el estado de las screens, una está Attacheada, es decir, usandose en primer plano y las demás están en segundo plano.

<span style="text-decoration:underline;"><strong>Como usar una screen:</strong></span>
Entonces, si tenemos una screen en segundo plano, ¿como hacemos para poder acceder a ella?.
Es super simple, primero que nada tenemos que saber cual es el nombre de la screen. En el caso de que no le hayas puesto nombre, la aplicación genera uno con un número de proceso parecido a este:

<img class="  wp-image-3253 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/screen6.png" alt="screen6" width="604" height="105" />

Si bien, cuando le damos un nombre también la aplicación le agrega un número de proceso, es bueno tener las screens creadas con nombre para una fácil identificación.
Volviendo a lo anterior, para poder usar una screen una vez que le hayamos hecho un Detach tenemos que hacer lo siguiente:

<blockquote>$ screen -r &lt;nombre_de_la_screen&gt;</blockquote>

Con ese comando vamos a acceder a la screen indicada con el nombre que le dimos. El parámetro <strong>-r</strong> se refiere a resumir la screen, es decir, hace un Rettach de la screen creada.

Una vez que tengamos nuestro proceso corriendo en segundo plano, podemos ver que lo está haciendo correctamente usando SCREEN si ejecutamos el monitor del sistema <strong>top</strong> o <strong>htop</strong>. Yo prefiero <strong>htop</strong>.

<img class=" size-full wp-image-3269 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/screen7.png" alt="screen7" width="669" height="91" />

Como ven, el proceso se está ejecutando sin problemas a través de una screen. Con esto nos damos cuenta el poder de Screen, porque no solo se puede hacer eso sino muchas cosas más. Si quieren ver los parámetros completos de la aplicación pueden ejecutar el comando <strong>"man screen"</strong> desde una terminal para tener acceder al completo manual de screen.

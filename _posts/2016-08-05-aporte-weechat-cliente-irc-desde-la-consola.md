---
layout: post
title: Weechat, cliente IRC desde la consola
date: 2016-08-05
author: neoranger
comments: true
categories: [Aporte]
---
Hace unos dias necesité usar la famosa red de canales de chat, más conocida como IRC (Internet Relay Chat). El problema es que tenía que conectarme desde el trabajo pero ahí tengo un problema, la mayoría de las webs y las aplicaciones que usan internet están bloqueadas por temas de seguridad de la empresa donde trabajo. Asi que se me ocurrió usar la terminal de un VPS de prueba que tengo alojado en la web <a href="http://c9.io">c9.io</a> ya que ésta tiene certificado HTTPS lo cual me daba la posibilidad de entrar, por ende, pude entrar al VPS gratuito asi que tenía acceso a una terminal linux. El problema es que no sabía como conectarme a IRC desde la terminal, hasta que encontré Weechat.

Weechat, es un cliente IRC hecho totalmente en la terminal, de un uso super fácil y de una instalación más que fácil.

Te voy a mostrar como instalarlo y como usarlo. Primero que nada para instalarlo solo tenemos que hacer:

<p style="text-align:left;"><code>sudo pacman -S weechat (En Arch y derivados)</code></p>

<p style="text-align:left;"><code>sudo apt install weechat (Ubuntu y derivados)</code></p>

Una vez que lo instalamos solo tenemos que tipear el nombre de la aplicación desde cualquier parte en la consola.

<img class=" size-full wp-image-2956 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/weechat1.png" alt="weechat1" width="314" height="96" />

Con esto vamos a ver la aplicación abierta. Recomiendo, si es que no está acostumbrado, a que uses la terminal maximizada para que te sea más fácil usar la aplicación.

<img class=" size-full wp-image-2961 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/weechat2.png" alt="weechat2" width="1366" height="712" />

Con la aplicación abierta, ahora queda el paso de conectarse al servidor de nuestra preferencia, en mi caso haré la prueba con el servidor Freenode. Para eso vamos a usar el comando <strong>/server add &lt;nombre_server&gt; &lt;url_server&gt;</strong> para añadir el servidor para poder conectarnos.

<img class=" size-full wp-image-2964 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/weechat3.png" alt="weechat3" width="451" height="80" />

Ya que tenemos el server añadido ahora vamos a conectarnos al mismo. Para eso vamos a usar el comando <strong>/connect freenode</strong>.

<img class=" size-full wp-image-2967 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/weechat4.png" alt="weechat4" width="311" height="66" />

Una vez conectados nos va a dar un nombre de usuario por defecto. Pueden usarlo si es que no tienen ningún usuario registrado. Sino pueden cambiarse ese nick simplemente con el comando <strong>/nick &lt;aca_va_el_nuevo_nick&gt;</strong>

Les paso algunos comandos para registrar el nick y unirse a canales:
Registrar el nick que configuré (si ya no está registrado): <strong>/msg nickserv register &lt;email&gt; &lt;contraseña&gt; &lt;repetir_contraseña&gt;
</strong>Unirse a un canal: <strong>/join #&lt;canal&gt;</strong>
Lista de canales que tiene el servidor: <strong>/list
</strong>

Con esto ya pueden disfrutar de IRC desde su consola de una manera super fácil y rápido.

Cabe destacar que se pueden tener varios canales abiertos sin problemas y podemos movernos entre pestañas con la combinación de teclas <strong>Alt+&lt;pestaña&gt;</strong>

<img class=" size-full wp-image-2972 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/weechat5.png" alt="weechat5" width="1366" height="712" />

Les recomiendo el server <strong>freenode</strong> (irc.freenode.net) porque es el servidor donde se encuentran los canales de soporte oficial es de todas las distros GNU/Linux y podés hablar directamente con los mantenedores de paquetes y hasta con los desarrolladores mismos de las distros como, por ejemplo, el mismo Ikey Doherty el creado de Solus.

Espero que puedas usar esta herramienta y que te sea útil a la hora de usar un recurso tan bueno como IRC.

---
layout: post
title: Como crear un servidor torrent en Raspbian
date: 2016-05-04
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-2723 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/raspberry-pi-logo.jpg" alt="raspberry-pi-logo" width="580" height="290" />

Que bueno sería que pudieras tener un lugar donde alojar mis películas y series y poderlas acceder desde cualquier equipo de tu red o incluso desde afuera de tu casa no? Bueno, eso es posible gracias a la RaspberryPi.

En el post de hoy les voy a explicar como armarse un server torrent el cual podremos acceder via web (o incluso desde el celular), pasarle un archivo torrent o magnet link y quedarnos tranquilos de que la RaspberryPi hará el resto.

Tranquilo que esto se puede hacer.

Antes que nada, si acabás de encender la RaspberryPi recién lista para hacer esto, lo primero que nos conviene hacer en nuestro equipo es darle una dirección IP estática para quedarnos tranquilos de poder acceder a la RPi sin problemas. Esto se hace super fácil, solo tenemos que modificar el archivo de interfaces en el sistema.

<code>sudo nano /etc/network/interfaces</code>

Una vez dentro del archivo, vamos a detectar nuestra conexión. Si estamos conectados por Ethernet, nos va a interesar el párrafo donde dice "auto eth0" (por lo general hay un 0, pero puede haber un 1. Si estamos conectados via wifi nos interesará el párrafo que dice "auto wlan0". En mi caso estoy conectado via WiFi, por ende tengo la siguiente configuración:

<pre><code>auto wlan0
iface wlan0 inet static
address 192.168.1.XX  (ésta será la IP fija que le daremos a la RaspberryPI)
gateway 192.168.1.1
netmask 255.255.255.0
wpa-ssid "nombre_de_mi_conexion"
wpa-psk "password_de_mi_conexion" (entre comillas dobles si es alfanumérico y sin comillas si es solo numérica)
</code></pre>

En el caso que sea la conexión por ethernet tenemos que obviar el nombre y el password de la red y obviamente en vez de wlanX irá ethX donde la X es el nro que nos indicará el comando <strong>"ifconfig"</strong> el cual muestra todas las interfaces de red.

<img class="  wp-image-2731 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/raspberry_pi_model_2_wide.jpg" alt="raspberry_pi_model_2_wide" width="535" height="390" />

Ahora si, una vez que tenemos nuestra IP fija en la RaspberryPi vamos a proceder a instalar el cliente de transmission en nuestra RaspberryPi. Se instala facilmente con un:

<code>sudo apt-get install transmission-daemon</code>

Una vez que instalemos este paquete, el servicio va a iniciarse ya configurado, por lo que vamos a tener que detenerlo para poder configurarlo a nuestro antojo. Para eso vamos a usar el comando:

<code>sudo /etc/init.d/transmission-daemon stop</code>

Con el server abajo, vamos a configurar para tener un user y pass dedicado para darle algo de seguridad y nadie en nuesta red local se meta a descargar algo. Configuramos el archivo .json:

<code>sudo nano /var/lib/transmission-daemon/info/settings.json</code>

Tenemos un par de cosas para configurar, primero que nada vamos a darle algo de seguridad a nuestro servidor torrent. Para ello vamos a modificar los campos  <strong>"rpc-username" y "rpc-password"</strong>. Acá vamos a poner un nombre de usuario y una contraseña para poder acceder a nuestro servidor. Por lo general, cuando se abre el archivo ya vamos a ver rellenos esos campos, podemos tranquilamente editarlos y poner el usuario que querramos y el password que querramos. <strong>Atentos, que en el campo de la contraseña vamos a ver un hash muy largo, no se alarmen, borrenlo tranquilos y pongan la contraseña que quieran. Cuando el servidor se ponga en ejecución la contraseña que pongamos se cifrará y creará un hash como el que habíamos borrado.</strong>

Ahora tenemos que hacer otros cambios. Vamos a configurar las rutas en el que el servidor va a descargar los torrents temporalmente y el directorio donde se alojarán los archivos una vez que se hayan descargado en su totalidad.
Para los torrents que se están descargando, tenemos que modificar el campo <strong>"incomplete-dir"</strong> por un directorio válido en nuestra RaspberryPi. <strong>Les sugiero tener un pendrive o disco externo dedicado a esto ya que si descargamos en la microSD que tenemos para el sistema, esto puedo traer fallos al sistema ya que si llenamos el espacio disponible, el sistema andará con problemas.</strong>
Para el directorio de los torrents descargados en su totalidad tenemos que modificar el campo <strong>"download-dir"</strong> por un directorio válido.

El último campo que debemos modificar es el campo "rpc-bind-address" en el cual pondremos la IP estática de nuestra RaspberryPi que definimos previamente.

Una vez que tenemos todo esto configurado, guardamos el archivo con Ctrl+O y salimos con Ctrl+X y lo que vamos a hacer es levantar nuestro server (ya que estaba apagado). Hay que tener en cuenta que si hiciste todas estas modificaciones en la configuración con el server prendido no van a surtir efecto, se tiene que hacer si o si con el server apagado. Entonces, prendemos nuestro server con el comando:

<code>sudo /etc/init.d/transmission-daemon start</code>

Una vez que la consola nos da el Ok ya vamos a poder acceder a nuestro servidor tipeando en nuestro navegador preferido nuestra dirección IP y el puerto por defecto 9091 que ya viene configurado: 192.168.1.X:9091, nos pedirá el user y pass que hemos configurado en el json y vamos a acceder al server.

<img class="  wp-image-2811 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/server_torrent.png" alt="server_torrent" width="586" height="329" />

Desde acá, su funcionamiento es idéntico al Transmission que podemos encontrar en nuestra distribución Linux preferida. Se pueden agregar tanto archivos .torrent como los conocidos magnet links. Una vez descargado lo que querramos este va a compartirse como semilla si es que no lo borran. Y si van a su RaspberryPi en la carpeta de  los descargados van a encontrar el archivo que pusieron a descargar.

Espero que les haya gustado este tutorial, hace rato que tenía ganas de hacerlo y varias personas me lo estaban pidiendo. Si hay algo que no se entiende o que omití, no duden de dejar los comentarios abajo o si quieren pueden mandarme un mail a neoranger@openamilbox.org

---
layout: post
title: Usando el Wormhole de Dataplicity
date: 2017-3-15
author: neoranger
comments: true
categories: [Aporte, RaspberryPi]
---
<img class="  wp-image-4182 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/03/dataplicity.png" alt="dataplicity" width="255" height="93" />

Hace unos días les mostré el <a href="http://neositelinux.com/2017/03/08/raspberrypi-dataplicity-un-servicio-ideal-para-tu-pi/">servicio que brinda Dataplicity</a> el cual nos da la posibilidad de acceder a nuestra RaspberryPi de forma muy fácil y sin complicaciones.

Ahora, les quiero mostrar una opción que tiene Dataplicity que lo acabo de probar y es genial.

Dataplicity nos da la opción de activar lo que se llama "Wormhole" (Agujero de Gusano en español) el cual nos da la opción de tener un dominio en el caso de que tengamos un servidor web creado en nuestra RaspberryPi.
Como yo tengo uno creado (totalmente cerrado para que yo solo pueda usarlo) decidí probar éste servicio no sin antes hablar con la gente de soporte ya que al tener ya armado el web server con Nginx y no-ip, el cual me da un dominio gratis del estilo miweb.zapto.org (entre varios dominios), para saber si tendría alguna dificultad o tendría que tocar algo. A lo que me respondieron que no, no hace falta hacer nada, siempre y cuando tenga ya el web server montado.

<!--more-->

Activar ésta opción es super fácil (además de ser una opción gratis):

<ol>
    <li>Nos logueamos en la web de Dataplicity e ingresamos a la RaspberryPi que tengamos configurada. Una vez dentro buscaremos el botón que dice "Active Wormhole" y le daremos click:
<img class=" size-full wp-image-4224 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/03/wormhole.png" alt="wormhole" width="351" height="153" /></li>
    <li>Una vez que lo activemos se generará una URL la cual servirá para poder ingresar a nuestro webserver creado. La URL no es un nombre de dominio con letras, sino que es con números (al estilo https://9999999x9x.dataplicity.io/) por lo que si queremos usarlo para el público es un poco feo pero para un uso personal es genial.
<img class=" size-full wp-image-4228 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/03/wormhole2.png" alt="wormhole2" width="527" height="143" /></li>
    <li>Si ingresamos a la URL que generamos vamos a poder ingresar a nuestro webserver. Nótese que el servicio que brinda es incluso con certificado HTTPS por lo que la conexión es super segura.
<img class=" size-full wp-image-4238 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/03/wormhole3.png" alt="wormhole3" width="430" height="531" />
Como ven yo tengo un webserver con un directorio indexado en la RaspberryPi donde alojo cosas y puedo descargarlas donde quiera. Lo bueno del servicio de Dataplicity es que no estorba lo que tenía hecho, es decir, puedo acceder a mi webserver tanto desde el dominio gratis que tengo configurado con no-ip como desde el dominio del Wormhole creado.</li>
    <li>Si el servicio no les gustó o no les convence solo tienen que desactivarlo de la misma manera en el que lo activaron:
<img class=" size-full wp-image-4249 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/03/wormhole5.png" alt="wormhole5" width="524" height="149" /></li>
</ol>

Espero que les sirva ésto, por mi parte me resulta muy genial poder acceder a éste servicio totalmente gratis.

Espero tus comentarios y opiniones. Saludos!

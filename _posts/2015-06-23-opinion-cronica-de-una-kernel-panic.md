---
layout: post
title: Crónica de un Kernel Panic
date: 2015-06-23
author: neoranger
comments: true
categories: [Opinion]
---
Cuando hablamos de Linux (o GNU/Linux para los puristas) hablamos de estabilidad, seguridad, actualización constante y soporte permanente. Pero muy pocas veces se hablan de los errores que le pueden aparecer a un usuario de improviso.
Es por eso que les paso a relatar mi "Crónica de un Kernel Panic".

El sábado 20 de junio estaba afuera de casa y chequeando Telegram desde el celular, vi que el amigo Yoyo Fernández iba a meterse en vivo en su KillAllRadio y dijo que el tema iba a ser "Crisis en la Linuxfera" y me interesó tanto que me apuré a hacer mis cosas para volver a casa lo más rápido posible.

Mientras iba en el colectivo aproveché la señal 4G que me brinda Movistar para ir escuchando la radio para fijarme si empezaba o no.
Llego a casa tranquilo sabiendo que todavía la charla no había empezado asi que me dispongo a prende mi laptop y bootear mi Linux Mint 17.1 XFCE, cuando de pronto... Kernel Panic

<a href="https://blogneositelinux.files.wordpress.com/2016/10/702428055_20987.jpg"><img class="alignnone size-full wp-image-2143" src="https://blogneositelinux.files.wordpress.com/2016/10/702428055_20987.jpg" alt="702428055_20987" width="1280" height="719" /></a>Pero, que es un Kernel Panic?
Según Wikipedia:

<blockquote>
<ol>
    <li class="mod">
<div class="_oDd"><span class="_Tgc">El <b>kernel panic</b> (en español: pánico en el núcleo) es un mensaje mostrado por un sistema operativo una vez detectado un error interno de sistema del cual no se puede recuperar. Los <b>kernel panic</b> usualmente proveen información de depuración <b>que es</b> útil sólo para los desarrolladores del sistema operativo.</span></div></li>
</ol>
</blockquote>

En resumidas cuentas es un error irrecuperable del sistema donde la única opción es apagar forzosamene el equipo.
En mis aproximadamente 7 años de experiencia en Linux esta es la segunda vez que tengo un Kernel Panic (la primera fue hace unos 5 años con Ubuntu) por lo que se como se debe proceder a pesar de no sufrirlo constantemente.

Sin entrar en pánico (cuac!) procedí a lo que sabía, o sea, a hacer un apagado forzoso del sistema, la cuestión es que me vengo a encontrar con que la laptop no se apagaba, de ninguna forma. Intenté reinciando con la combinación de botones Ctrl+Alt+Del y nada. Me quedaba darle al botón de encendido/apagado para que se apague y para mi sorpresa no fue así. Tenía una laptop con Kernel Panic que no se podía apagar, ahora si me había entrado el pánico.

La única solución fiable que quedaba era sacarle la batería. Procedí a hacerlo pero me encontré con que la batería no se puede remover, es decir, la laptop en su parte inferior tiene la forma de la batería externa pero no es dicha batería sino que la misma viene incorporada a la máquina.

Para más explicación les dejo una foto de cuando le saqué la tapa inferior a la laptop pensando que podría remover la batería.

<img class="alignnone size-full wp-image-2147" src="https://blogneositelinux.files.wordpress.com/2016/10/702428778_21344.jpg" alt="702428778_21344" width="1280" height="720" />

Como se puede apreciar en la foto esos cilindros celestes son las celdas de batería, es decir están expuestas dentro del hardware de la laptop. Esto es algo nuevo que me encuentro ya que como la laptop la compré hace poco, esa parte no la revisé y ni me percaté de eso.
Asi que, así como estaba volví a poner la tapa inferior sin tocar nada para no destruir la laptop y tener que arrepentirme después.

Entonces la única solución que tenía era esperar a que a batería se agote y esperar para ver el problema que podría tener el sistema o la laptop ya que buscando en internet decía que el mensaje que daba ese kernel panic se debía a un fallo de hardware. Imaginense como me puse cuando leí eso. No lo podía creer.

3 horas después (el tiempo de carga de la batería, si si, estaba llena y lista para usar antes de que pase esto) la laptop se apagó y me dispuse al instante a enchufarla para ver que había pasado.
Para mi sorpresa la máquina arrancó normalmente llegando al GRUB sin problemas, asi que ya estaba descartando problemas de hardware. En el GRUB elijo el mismo sistema con el mismo kernel que me habia dado el error para probar si ese kernel o el sistema completo se había roto. Resulta que tanto el sistema como el kernel arrancaron sin problema alguno como si nada hubiera pasado, es mas ahora mismo estoy usando ese mismo kernel para postear esta entrada.

Conclusión, si alguna vez te agarra desprevenido un Kernel Panic, no te alteres, en Linux todo tiene solución. En mi caso, si no me arrancaba ese kernel podria reiniciar la maquina y elegir otro kernel (mas nuevo o viejo) para bootear el sistema.

Ahí nos damos cuenta de lo que decía al principio del post, por más que tuve un error asi el sistema se pudo recuperar sin problemas, a diferencia de los pantallazos azules de Windows, por ejemplo, donde la mayoría de las veces el sistema no bootea más.

<p style="text-align:center;">No le tengas miedo al Kernel Panic, hacete amigo de Linux!!</p>

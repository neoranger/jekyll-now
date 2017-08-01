---
layout: post
title: Tu conexión Wifi anda mal? Encontrá el mejor canal!
date: 2015-07-06
author: neoranger
comments: true
categories: [Informacion, Aporte]
---
Muchas veces puede ser que en tu casa o tu trabajo la conexión WiFi ande de mal a peor y a veces esto se debe a que en la mayoría de los routers viene configurado el mismo canal de frecuencia por lo que hace que se generen interferencias entre las distintas señales.

Esto tiene una solución muy práctica y es usando el escaneo de redes para chequear que canal estén usando y así nosotros poder mudarnos a un canal que no esté usado y tener una conexión óptima.

En cualquier distro podemos utilizar el siguiente comando

<blockquote><strong>"sudo iwlist wlan0 scan | grep Frequency | sort | uniq -c | sort -n"</strong></blockquote>

Donde vamos a tener un resultado parecido a esto:

<img class=" size-full wp-image-2298 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/chequeo_wifi.png" alt="chequeo_wifi" width="557" height="155" />

Ustedes no ven el comando porque lo que yo hice fue crear un simple archivo sh para dejarlo como script y no tener que estar recordando el comando cuando lo necesite. Pero con copiar y pegar funciona de la misma manera, eso si, siempre como root.
Como se ve en la imagen, esos son los canales que están siendo ocupados (en mi caso) alrededor de mi casa.
Entonces, para tener una conexión óptima yo NO debería usar los canales que aparecen en el resultado del comando sino estaría agregando mi router a esos canales ya usados. Entonces a mi me vendría bien usar los canales 2, 3, 4, 5, 7, 9 y 10.

Si vas a la configuración de tu router, es muy probable que tengas la configuración del canal en automático como me pasa a mi:

<img class=" size-full wp-image-2738 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/router1.png" alt="router1" width="372" height="82" />

Solo con desplegar el menú podemos elegir el canal que esté menos afectado a interferencias por conexiones simultaneas:

<img class=" size-full wp-image-2742 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/router2.png" alt="router2" width="306" height="292" />

Y listo, un problema menos en nuestra casa o lugar de trabajo.

Claro, esto no es una solución determinante ya que es muy probable que al pasar los días el canal al que cambiaste el router tenga mas conexiones que los otros canales, por ende, deberás repetir los pasos en el caso de que tu router esté sufriendo caidas o esté teniendo mala calidad en la conexión.

Ojo, no descarto que el router pueda tener problemas, al ser de mala calidad o ya le quede poco de vida útil. Si el problema persiste al realizar estos pasos seguramente no es un problema de interferencias sino mas bien un problema de hardware.

<a href="http://www.fabio.com.ar/6470?utm_medium=twitter&amp;utm_source=twitterfeed">Fuente</a> (de donde saqué el comando)

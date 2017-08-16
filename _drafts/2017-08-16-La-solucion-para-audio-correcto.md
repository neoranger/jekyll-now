---
layout: post
title: "Como hacer andar el Samson R21S si no te funciona la entrada de auriculares"
date: 2017-08-17
author: neositelinux
comments: true
categories: [Aporte, Tecnologia]
---

Como saben, en el día de ayer subí un video del [Unboxing del micrófono Samson R21S](https://neoranger.github.io/Unboxing-Microfono-Samson-R21S/) el cual ya probé y pude usar con mucho gusto.
Pero lo que ustedes no saben es que tuve un gran problema con el mismo. No podía usarlo. Les paso a contar.

Hace unas semanas me compré una Lenovo Thinkpad L420, una laptop decente la cual la compré con el fin de que la usara mi esposa ya que a ella se le había roto su laptop y necesitaba una. Como la Thinkpad es bastante robusta y no muy fina, decidí darle mi otra laptop Lenovo (ahora no recuerdo el modelo) y quedarme yo con la L420.
Lo bueno es que la persona que me vendió ésta Thinkpad L420 me dió el docking station que traen ese tipo de máquinas. ¿Qué es un docking station? Es, básicamente, un dock el cual sirve para extender el poder de la laptop en cuanto a puertos, conexiones y demás. La thinkpad trae un puerto espacial abajo la cual se conecta al dock y automáticamente los puertos usb, de video, de sonido y demás empiezan a andar en el dock por lo que vos podrías dejar todo el docking station preparado (un monitor conectado, parlantes, teclado, mouse, etc.) y cuando se necesita la portabilidad de la laptop se saca la misma del dock dejando todo como está y cuando se necesite ampliar la laptop (usándola como si fuera una PC de escritorio) se conecta al dock y listo.

La cuestión es que el Samson R21S no funcionó ni en el puerto de audio de la laptop ni en el puerto del dock station. No me pregunten por qué, pero no funcionó. Probé mil maneras sin dar con lo que quería y nada, seguía igual.
Hasta que se me prendió la lamparita, si podría convertir el puerto plug que deja el micrófono a usb, la laptop debería tomarlo sin problemas.
Pero chequeando en youtube, sobre todo el canal Podcastage, el cual estoy siguiendo mucho y aprendiendo mucho, todos daban puntos negativos a la opción de usar un cable XLR (entrada del micrófono) a USB (que iría a la laptop). Y como éste tipo de cable a pesar de no ser tan bueno es caro, bastante diría yo, desistí de esa opción.

Me fuí por la opción entonces de comprarme un interfaz USB o mesa de mezclas para poder conectar ahí el micrófono a través del plug de 1/4 (6.3mm). Pero ese tipo de periféricos/dispositivos/artefactos son muy caros en Argentina, ya que vienen con una sobrecarga de impuestos por ser extranjeros y demás.

Descartada esa solución también. Asi que lo que se me ocurrió buceando un poco en Mercado Libre fue buscar directamente adaptadores USB a 3.5mm, las famosas "plaquitas de audio". Y con todo asombro conseguí una medianamente pasable. Lo mejor de todo es que funciona sin problemas. Una sorpresa es que en Ubuntu, la distro donde la probé, no hubo problema alguno, fue totalmente Plug & Play a pesar de que el dispositivo trae un mini cd con los drivers.

### Esta es la placa:
![_Logo ]({{ site.baseurl }}/images/placa_nisuta.jpg)

Como ven, la placa es super sencilla, entrada usb y le sale un conector para el  micrófono y otro para los auriculares. Super sencillo. Solo lo que tuve que hacer en Ubuntu fue mutear el micro integrado en laptop y nada mas.

Una buena, sencilla y barata solución cuando no funcionan los puertos de audio.

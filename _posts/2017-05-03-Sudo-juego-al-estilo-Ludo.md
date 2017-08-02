---
layout: post
title: Sudo - Un juego Linuxero basado en el Ludo
---

Seguramente si naciste en los 90s o tenés hermanos mayores, alguna vez habrás jugado al Ludo. Ese juego de tablero en el que cada participante tiene que llevar a sus fichas al centro del tablero no sin antes dar una vuelta completa al mismo.

La gracia del juego es jugarlo con la mayor cantidad de jugadores, en éste caso, 4 es el máximo. Así nos aseguramos unos minutos de buena diversión.

El día de hoy les traigo a Sudo, un juego tipo Ludo pero Linuxeado. 
En vez de tener solo colores, tenemos equipos tales como:
* Equipo Ubuntu (**color amarillo**)
* Equipo CentOS (**color rojo**)
* Equipo Fedora (**color azul**)
* Equipo Mint   (**color verde**)

La idea es llevar a nuestros Tuxs *(fichas con forma de la mascota de Linux que representan a procesos)* al centro del tablero (**kernel**) dando antes una vuelta completa.

Tenemos la dificultad de cruzarnos con los otros jugadores y a su vez, caer en casillas peligrosas tales como:
* Kill-9: Debés llevar a tu Tux de nuevo a la linea de largada (**init**)
* /dev/cool: Te lleva al principio de la linea de entrada al camino del kernel siempre y cuando esa casilla sea de tu color
* fork: Si el equipo tiene un proceso (**ficha de Tux**) en el kernel (**centro del tablero**) ese proceso tiene que volver a la linea de juego, más precisamente a la casilla fork.

Las reglas del Ludo clásico se puede conseguir en [wikipedia](https://es.wikipedia.org/wiki/Ludo)

Les dejo el tablero, junto con el dado (un dado con caras en binario, excelente) y las reglas propias de éste juego.
La mecánica es super sencilla y es ideal para jugar con los niños.

![_Logo ]({{ site.baseurl }}/images/sudo_ludo.jpg)
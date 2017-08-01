---
layout: post
title: Optimizar la RAM con swappiness
date: 2015-11-13
author: neoranger
comments: true
categories: [Aporte]
---
Seguramente si buscás en tu buscador favorito sobre este tema, no creo que este post salga primero porque es un tema recontra visto y conocido para los usuarios de Linux. Pero me pareció bien crear el post porque siempre que instalo una distribución y necesito hacer un <strong>swappiness</strong> tengo que estar buscando como era. Llamenme flojo pero es verdad, lo buscaba en vez de hacer lo que voy a hacer ahora, que es dejar la info en el blog para que en el día de mañana venga a mi blog a chequear eso.

Ahora bien, que es swappiness? Bueno, es una función que le podemos dar al sistema para manejar el uso de la partición <strong>SWAP (en el caso de que la crees cuando instalas tu distribución favorita)</strong>. Esta partición, también llamada, <strong>"Area de intercambio"</strong> no es mas que un espacio en el disco duro la cual se utiliza "como memoria ram" cuando la memoria real está casi llena.

En las distribuciones Linux es común que el valor de swappiness esté en un <strong>60</strong>, que lo que quiere decir es que cuando la memoria <strong>RAM esté un 40% llena comience a utilizar la SWAP</strong>. Al ser el porcentaje un poco bajo para que la use es probable que el equipo o las operaciones se hagan un poco mas lento ya que la SWAP es un espacio físico del disco y si bien trabaja como RAM no tiene las mismas características en cuanto a hardware se refiere. Y si bien esto funciona bien, es mejor modificar ese valor.
Esto es algo muy útil en equipos relativamente algo viejos o con poca RAM ya que <strong>en equipos nuevos no hace falta siquiera tener una partición SWAP debido a que la cantidad de RAM alcanza y sobra</strong>.

Pero si tenés un equipo con 2, 3 o 4GB de RAM te recomiendo hacer esto para que puedas tener un mejor rendimiento a la hora de usar tu equipo. Vamos a seguir una serie de pasos:

<ol>
    <li>Chequeamos cual es el valor de swappines por defecto. Abrimos una terminal y escribimos:
<pre>cat /proc/sys/vm/swappiness</pre>
</li>
    <li>Es probable que el valor sea 60, ya que es un valor por defecto. Para cambiar esto vamos a escribir el siguiente comando:
<pre>sudo sysctl -w vm.swappiness=10</pre>
</li>
    <li>Con el comando anterior le hemos dado un valor de 10 a swappiness. Esto quiere decir que cuando la RAM se llene a un 90% empiece a utilizar recién ahí la SWAP. <strong>Pero si reiniciamos el equipo este valor se borrará y volverá al valor que tenía por defecto.</strong> Para modificar permanentemente este valor vamos a editar el siguiente archivo:
<pre>sudo nano /etc/sysctl.conf</pre>
</li>
    <li>Con esto abriremos ese archivo de configuración y lo que vamos a hacer es agregar al final del archivo el siguiente comando:
<pre>vm.swappiness=10</pre>
</li>
    <li><strong>Esto hará que el valor quede permanente.</strong> En el ejemplo está puesto el valor 10 pero puede ser cualquier valor menor a 60. Guardamos el archivo y al reiniciar el equipo si chequeamos el valor de swappiness repitiendo el comando del paso 1 vamos a chequear que el valor ha cambiado correctamente.</li>
</ol>

Recomiendo usar el equipo unos dias para probar el rendimiento del mismo y del sistema y ver si se comporta bien, en el caso de que no sea así podés cambiar el valor repitiendo los pasos.
Lo bueno de estos pasos es que <strong>se puede hacer en cualquier distribución Linux</strong>, no hace falta que sea Ubuntu, OpenSuse o Fedora,<strong> esto sirve para todas las distros por igual.</strong>

Espero que te sirva tanto como a mi.

Saludos.

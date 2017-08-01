---
layout: post
title: Como pasarte a la rama Testing en Manjaro
date: 2016-09-04
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-2624 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/manjaro-logo.png" alt="manjaro-logo" width="439" height="247" />

Hace unos días estaba muy pero muy cómodo en mi Manjaro XFCE y hablando con la gente del grupo de Telegram me dió que pensar sobre que pasaría si configuraría Manjaro en la rama Testing. Cabe decir que nunca en ninguna distro instalada en alguna PC o laptop me había pasado a la rama Testing o inestable o como se llame en cada distro.

Asi que decidí hacerlo, mas que nada porque la rama Testing de Manjaro no es tan inestable y les explico por qué. Como Manjaro usa ArchLinux como base, lo que hace el Manjaro Team es generar sus propios repositorios, darle un poco mas de testeo hasta sacar una versión muy estable de ese paquete. Asi que si hacemos una tabla de comparación de ArchLinux con Manjaro, podemos mostrar lo siguiente:

<table style="height:193px;" width="783">
<tbody>
<tr>
<td style="width:394px;"><strong>ArchLinux</strong></td>
<td style="width:395px;"><strong>Manjaro</strong></td>
</tr>
<tr>
<td style="width:394px;">Repositorio Inestable</td>
<td style="width:395px;">No lo usan como base</td>
</tr>
<tr>
<td style="width:394px;">Respositorio Testing</td>
<td style="width:395px;">Repositorio Inestable</td>
</tr>
<tr>
<td style="width:394px;">Repositorio Estable</td>
<td style="width:395px;">Respositorio Testing</td>
</tr>
<tr>
<td style="width:394px;">--------------------------</td>
<td style="width:395px;">Repositorio Estable (repo propio)</td>
</tr>
<tr>
<td style="width:394px;"></td>
<td style="width:395px;"></td>
</tr>
</tbody>
</table>

Como ven, gracias a este esquema del equipo de Manjaro, los paquetes que entrega Manjaro en sus repositorios son super estables, por lo que pasarnos a la rama Testing de Manjaro no vamos a tener problemas en cuanto a la estabilidad del sistema. Lo que va a pasar al pasarnos a la rama Testing, vamos a recibir actualizaciones más seguido y antes que la gente que tenga el sistema configurado en la rama estable.

Pero bueno, vamos a lo que dice el título del post, vamos a pasarnos a la rama Testing en Manjaro.

Para eso, vamos a editar el archivo <strong>/etc/pacman-mirrors.conf</strong> para eso lo vamos a editar con el editor nano desde una terminal escribiendo:

<blockquote><code>sudo nano /etc/pacman-mirrors.conf
</code></blockquote>

Una vez abierto el archivo, apenas al principio vamos a ver el apartado que dice  <strong>"## Branch Pacman should use (stable, testing, unstable)"</strong> , nos vamos a ese apartado y podemos hacer 2 cosas:
1) Comentar la linea <strong>"Branch = Stable"</strong> y escribir después de ésta la línea <strong>"Branch = Testing"</strong>.
2) Editar directamente la línea <strong>"Branch = Stable"</strong> por <strong>"Branch = Testing"</strong>.

Por mi parte me decanté por la primer opción, dejar comentada la linea que indica que está la rama Stable y escribir debajo de ésta la linea con el branch Testing, de la siguiente manera:

<img class="  wp-image-2880 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/testing-a-manjaro.png" alt="testing-a-manjaro" width="611" height="89" />

Una vez modificado el archivo, lo guardamos con Ctrl+X, le damos a Si y volvemos a la consola.

Ahora, queda solo un paso más por hacer, refrescar los mirrors. Para eso vamos a usar el comando:

<blockquote>sudo pacman-mirrors -g</blockquote>

Una vez que los mirrors fueron refrescados, podemos actualizar el sistema tranquilamente, o instalar los paquetes que querramos ya que estaremos sin problemas en la rama Testing de Manjaro.

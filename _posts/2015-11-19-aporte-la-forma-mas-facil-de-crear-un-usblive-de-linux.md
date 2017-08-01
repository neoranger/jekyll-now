---
layout: post
title: La forma mas facil de crear un USBLive de Linux
date: 2015-11-19
author: neoranger
comments: true
categories: [Aporte]
---
<img class="  wp-image-2376 aligncenter" src="https://blogneositelinux.files.wordpress.com/2016/10/dd.jpg" alt="dd" width="400" height="200" />

Hay algo en el mundo linuxero que los mismos usuarios lo hacen llamar "Distrohopping". Esta palabra se usa para describir un tipo de sintoma que tiene el usuario linuxero cuando no puede parar de instalar o probar distribuciones por el solo hecho de instalarlas en su equipo, personalizarlas, probar su funcionamiento y, acto seguido, pisar esa distro con otra. Esto es algo que se convierte en un circulo vicioso a raiz de la gran libertad que tenemos en Linux y de la cantidad de distribuciones que hay para probar, entonces nunca estamos conformes con lo que instalamos y decidimos instalar otra distro, pero esa distro no nos gusta y volvemos a la anterior o a otra totalmente nueva y asi sucesivamente.

Hace unos años esto se hacia muy tedioso porque se tenian que gastar varios cds o dvds dependiendo del formato de la distro y por eso el nivel de distrohopping no era tan alto como lo es ahora, y esto debe a que podemos tener facilmente una distro preparada en un pendrive USB en cuestion de segundos y si no nos gusta usamos otra distro con el mismo pendrive y ya esta. Basta de gastar en cds o dvds.

A la hora de crear una imagen LiveUSB o un USB booteable de cualquier distro Linux las opciones son muy diferentes:

<ol>
    <li>Tenemos primero al conocidisimo y fatidico <strong>Unetbootin</strong>, una aplicacion para crear LiveUSB que tuvo su momento de gloria pero ultimamente decayo mucho a raiz de temas de compatibilidad de distros, es decir, Unetbootin anda solamente en distros tipo Debian o derivadas (Ubuntu, Mint, eOS, etc.), pero en otro tipo de distros no funciona.</li>
    <li>La segunda opcion es un poco menos conocida pero  muy efectiva. Se trata de <strong>SUSE Image Writer</strong>, una aplicacion creada por el equipo de OpenSUSE para la creacion de LiveUSB. Esta aplicacion no solo funciona excelente sino que ya esta disponible en todas las distros y sino es esa tenemos algunos forks como es el caso de la <strong>"Grabadora de Imagenes USB"</strong> que tiene <strong>Linux Mint</strong>, la cual anda excelente tambien.</li>
    <li>Y queria llegar a este punto el cual es el tema principal del post: Para poder crear una LiveUSB no hace falta ni Unetbootin ni ImageWriter? Saben por que? Porque en Linux tenemos un comando dedicado para esto. Se trata del <strong>comando "dd"</strong>.</li>
</ol>

Este comando es basicamente un vuelco de datos de un origes a un destino. Entonces, lo que tenemos que hacer es darle el directorio de nuestra imagen .iso de la distro que queramos para crear el LiveUSB y seguidamente el destino a donde tiene que hacer el vuelco de datos.

El comando es super sencillo:

<blockquote>dd if=/ruta/a/imagen.iso of=/dev/sd<strong>X <span style="text-decoration:underline;">bs=4M &amp;&amp; sync</span></strong></blockquote>

Como vemos debemos darle el origen de la imagen .iso (en la parte del if [Input File]) y el destino (particion usb montada en la parte del of [Output File]) a la que hara el vuelco de datos, donde la X es la letra asignada a la particion del disco USB. Despues de hacer esto nuestro USB estara listo para bootear.

La parte subrayada es totalmente opcional ya que este comando ofrece un sin fin de opciones como por ejemplo clonar discos, o copiar de un DVD a un disco rigido o borrar particiones o incluso restaurar el MBR.

Les explico esta dos opciones para que sepan que es lo que hacen y si quieren las pueden o no usar:

<ol>
    <li>bs=4M -&gt; es el tamaño de bloque en bytes, por defecto es 512 bytes el cual es el tamaño de bloque “clásico“ para los discos duros. Si y sólo si los discos duros tienen un tamaño de bloque de 4K, puede utilizar “4096“ (4M) en lugar de “512“. Este parámetro influye en la propagación del error (en caso de que ocurra).</li>
    <li>sync -&gt; llena bloques de entrada con ceros si hubo errores de lectura, por lo que los desplazamientos de datos se mantienen en sincronía.</li>
</ol>

Como ven, el comando dd es un fiel aliado a la hora de crear un LiveUSB de nuestra distro favorita, por eso recomiendo mucho que lo<strong> utilicen y lo prueben y nos comenten que resultados tuvieron </strong>y si les gusta mas o menos que las aplicaciones mencionadas arriba.

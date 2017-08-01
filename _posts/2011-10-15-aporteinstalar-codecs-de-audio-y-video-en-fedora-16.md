---
layout: post
title: Instalar Codecs de audio y video en Fedora 16
date: 2011-10-15
author: neoranger
comments: true
categories: [General]
---
Hola amigos!! Como andan?? Yo sigo acá buscando cosas para poder dejar a mi Fedora 16 en fase Beta bien pero bien funcional.<br /><br />Como sabemos, cada vez que instalamos un sistema nos viene bien pelado y tenemos que empezar a instalar aplicaciones, drivers y demás para que todo lo que querramos ande de 10. Es por eso que hoy les traigo una aplicación bien sencilla que nos permite instalar los codecs que necesitemos de forma automatica sin tener que estar tirando lineas de codigo en la terminal.<br /><br /> Si, parece que es una aplicación para vagos pero en realidad facilita mucho la instalación<br /><br />Los pasos son los siguientes:<br /><br /><b>Paso #1</b><b>:</b><br /><br /><b><br /></b><br /><b>su -c 'yum -y --nogpgcheck install http://dnmouse.org/autoplus-1.2-5.noarch.rpm' </b><br /><br /><b>Paso #2:</b><br /><br /><br /><b>su -c 'rpm --import http://dnmouse.org/RPM-GPG-KEY-dnmouse' </b><br /><br />Fijense que tienen que estar logueados como root, sino no funciona. Despúes van al dash y buscan la aplicación como "autoplus"  y listo!!!<b><br /></b>

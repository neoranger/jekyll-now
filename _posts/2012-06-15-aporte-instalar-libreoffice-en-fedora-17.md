---
layout: post
title: Instalar LibreOffice en Fedora 17
date: 2012-6-15
author: neoranger
comments: true
categories: [Apote, General,]
---
Después de una mala jugada que me salió en Ubuntu 12.04 y, bueno digamoslo de alguna manera, rompiera el sistema instalando demasiadas cosas y tocando varias configuraciones, decidí irme hacia otra distribución, por lo cual elegí Fedora 17. La verdad que anda muy bien y no me quejo de lo buena que es.<br />Solo que hay cosas que hay que investigar, comandos nuevos que aprender pero eso es cosa de todos los dias.<br />Hoy me encuentro que no puedo instalar libreoffice ya que me dice que el paquete no existe.<br />Estaba intentando con el comando<br /><br /><blockquote class="tr_bq"><span style="background-color:white;font-family:Georgia, 'Times New Roman', Times, serif;line-height:24px;"><span style="font-size:large;">yum groupinstall “Office/Productivity”</span></span></blockquote>Pero nada, tampoco era un tema de permisos ni nada de eso. Entonces navegando por la web, encontré este comando que parece que es una descomposición del comando anterior:<br /><blockquote class="tr_bq"><span style="background-color:white;font-family:Georgia, 'Times New Roman', Times, serif;line-height:24px;"><span style="font-size:large;">su -c yum install libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-langpack-es</span></span></blockquote>Con este comando no solo vamos a tener el paquete completo instalado sino que además vamos a tenerlo en español.<br />Un alivio para los que trabajan con el paquete de ofimatica por definición de todos los Linuxeros.<br /><br />Que lo disfruten, saludos!!!<br /><blockquote class="tr_bq"> </blockquote>

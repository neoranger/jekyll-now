---
layout: post
title: Problemas de dependencias con Google Chrome en Ubuntu 13.04
date: 2013-05-01
author: neoranger
comments: true
categories: [General, Informacion]
---
<span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">El 25 de septiembre salió a la luz, la ultima versión de la distro mas conocida del planeta, hablamos de Ubuntu 13.04.</span><br /><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Un dia después de haber instalado este sistema operativo (desde cero), tuve problemas con algunas aplicaciones, preferentemente con Google Chrome. Cuando me bajé el archivo .deb desde la pagina principal de Google y quise instalarlo, me daba un error de dependencia. Quise solucionarlo bajando la dependencia y demás pero no logré hacerlo. Hasta que surfeando en la web encontré la solución:</span><br /><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><br /></span><br />

<div style="background-color:white;border:0;font-size:17px;line-height:1.65rem;margin-bottom:1.714285714rem;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Lo primero que debemos hacer es descargar e instalar la librería <code>libudev0</code>, esto podemos lograrlo ejecutando los siguientes comandos en la terminal teniendo en cuenta la arquitectura de tu instalación de Ubuntu 13.04.</span></div>

<h3 style="background-color:white;border:0;clear:both;font-size:1.442857143rem;font-weight:normal;line-height:1.846153846;margin:1.714285714rem 0;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><a name='more'></a>libudev0 para sistemas de 32 bits</span></h3>

<pre style="background-color:white;border:1px solid rgb(237,237,237);color:#666666;font-size:14px;line-height:24px;margin-bottom:1.714285714rem;margin-top:1.714285714rem;overflow:auto;padding:1rem;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">wget -c www.mirrorservice.org/sites/archive.ubuntu.com/ubuntu//pool/main/u/udev/libudev0_175-0ubuntu13_i386.deb<br />sudo dpkg -i libudev0*.deb<br />rm libudev0*.deb</span></pre>

<h3 style="background-color:white;border:0;clear:both;font-size:1.442857143rem;font-weight:normal;line-height:1.846153846;margin:1.714285714rem 0;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">libudev0 para sistemas de 64 bits</span></h3>

<pre style="background-color:white;border:1px solid rgb(237,237,237);color:#666666;font-size:14px;line-height:24px;margin-bottom:1.714285714rem;margin-top:1.714285714rem;overflow:auto;padding:1rem;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">wget -c www.mirrorservice.org/sites/archive.ubuntu.com/ubuntu//pool/main/u/udev/libudev0_175-0ubuntu13_amd64.deb<br />sudo dpkg -i libudev0*.deb<br />rm libudev0*.deb</span></pre>

<h2 style="background-color:white;border:0;clear:both;font-size:1.685714286rem;font-weight:normal;line-height:1.6;margin:1.714285714rem 0;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Instalar Google Chrome en Ubuntu 13.04</span></h2>

<div style="background-color:white;border:0;font-size:17px;line-height:1.65rem;margin-bottom:1.714285714rem;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Ahora vamos a descargar el paquete .deb del navegador web <a href="https://www.google.com/intl/en/chrome/browser/" style="border-bottom-style:dotted;border-width:0 0 1px;margin:0;outline:none;padding:0;text-decoration:none;vertical-align:baseline;" target="_blank" title="Google Chrome">Google Chrome directamente desde el sitio web oficial</a>.</span></div>

<div style="background-color:white;border:0;font-size:17px;line-height:1.65rem;margin-bottom:1.714285714rem;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Una vez tengamos descargado el paquete, nos aseguramos de estar ubicados (en la terminal) en el directorio en cual se encuentra el instalador de Google Chrome para luego ejecutar el siguiente comando:</span></div>

<pre style="background-color:white;border:1px solid rgb(237,237,237);color:#666666;font-size:14px;line-height:24px;margin-bottom:1.714285714rem;margin-top:1.714285714rem;overflow:auto;padding:1rem;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">sudo dpkg -i google-chrome*.deb</span></pre>

<div style="background-color:white;border:0;font-size:17px;line-height:1.65rem;margin-bottom:1.714285714rem;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">En este punto ya tenemos instalado <strong style="border:0;margin:0;padding:0;vertical-align:baseline;">Google Chrome en Ubuntu 13.04 Raring Ringtail</strong>. Sin embargo, no es posible lanzar la aplicación debido a algunos problemas de dependencias que aún tenemos.</span></div>

<div style="background-color:white;border:0;font-size:17px;line-height:1.65rem;margin-bottom:1.714285714rem;padding:0;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Para solucionar este problema, instalamos las dependencias necesarias para que la aplicación corra correctamente mediante la ejecución del siguiente comando en la terminal:</span></div>

<pre style="background-color:white;border:1px solid rgb(237,237,237);color:#666666;font-size:14px;line-height:24px;margin-bottom:1.714285714rem;margin-top:1.714285714rem;overflow:auto;padding:1rem;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">sudo apt-get -f install</span></pre>

<pre style="background-color:white;border:1px solid rgb(237,237,237);color:#666666;font-size:14px;line-height:24px;margin-bottom:1.714285714rem;margin-top:1.714285714rem;overflow:auto;padding:1rem;vertical-align:baseline;"><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><br /></span></pre>

<span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">Con estos sencillos pasos vamos a tener nuestro Google Chrome en Ubuntu 13.04, pero claro este problema de dependencia se debe a un error en el entorno predilecto de Ubuntu el cual es Unity. Si en el caso en el que tengas instalado Xubuntu, Kubuntu o Ubuntu con Gnome3, no hace falta hacer esto ya que ese problema está resuelto.</span><br /><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><br />Espero que les sirva si es que no se instalaron otra distro antes de ver este post :P</span><br /><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><br />Saludos!!!</span><br /><span style="font-family:Helvetica Neue, Arial, Helvetica, sans-serif;"><br /></span><span style="color:black;font-family:Helvetica Neue, Arial, Helvetica, sans-serif;">FUENTE DE LA SOLUCION</span>

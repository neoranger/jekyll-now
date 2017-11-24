---
layout: post
title: "Winff: usando ffmpeg de forma gráfica"
date: 2017-11-24
author: neositelinux
comments: true
categories: [Aporte]
---

Ayer estaba grabando unos videos usando OBS para pasárselo a unos amigos y como éstos usan solo Whatsapp (que quieren que les diga, no los puedo convencer) necesitaba convertir los archivos de video que genera OBS en MKV a MP4. Si, se que OBS graba en MP4 pero no genera la misma calidad que en MKV, es más, el mismo OBS indica que si vas a grabar en MP4 y por alguna cuestión esa grabación no termina bien, automáticamente se pierde. No así con los otros formatos.

<p align="center">
<img src="/images/winff.png" alt="_Logo">
</p>

Winff es una GUI (Interfaz Gráfica de Usuario) para ffmpeg, esa tremenda aplicación que sirve para muchisimas cosas. En éste caso, para convertir videos, es decir, que la GUI usa a ffmpeg para la conversión de videos de una menera fácil.

No solo se convierten y ya está, sino que tambien se pueden hacer varias cosas con los mismos ya que tiene una solapa de opciones muy interesantes en cuanto a: Video, Audio, Recorte y Tiempo. Les dejo unas capturas de éstas solapas para que las vean:

<p align="center">
<img src="/images/winff2.png" alt="_Logo">
</p>

<p align="center">
<img src="/images/winff3.png" alt="_Logo">
</p>

<p align="center">
<img src="/images/winff4.png" alt="_Logo">
</p>

<p align="center">
<img src="/images/winff5.png" alt="_Logo">
</p>

<p align="center">
<img src="/images/winff6.png" alt="_Logo">
</p>

Como ven, al tomar a ffmpeg como base, la herramienta es super poderosa. Lo que más me gustó es que se pueden poner varios videos en cola para convertirlos algo que ahorra mucho trabajo a la hora de tener varios, optimizando así el tiempo. Y por eso no se preocupen porque ffmpeg hace todo el trabajo como si lo estuviéramos usando desde la terminal.

Por eso, si no quieren matarse con comandos desde la terminal o no saben usar ffmpeg desde la terminal y no conocen sus comandos para convertir archivos, ésta GUI los puede ayudar para esos momentos.

Para instalarlo basta con un:

Ubuntu y derivadas (versión GTK): `sudo apt install winff`

Ubuntu y derivadas (versión QT): `sudo apt install winff-qt`

Arch y derivadas (versión GTK): `sudo pacman -S winff` 

Arch y derivadas (versión QT): `yaourt -S qwinff`
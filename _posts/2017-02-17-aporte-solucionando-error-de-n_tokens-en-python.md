---
layout: post
title: Solucionando error de N_TOKENS en Python
date: 2017-2-17
author: neoranger
comments: true
categories: [Aporte, n_tokens, python, python2.7, raspberry pi 2, RaspberryPi, raspberrypi2, raspbian, token, tokenize]
---
<img class="  wp-image-4151 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/02/python-logo.png" alt="python-logo" width="542" height="183" />

Si estás en algún proyecto usando Python y estás usando <strong>tokens</strong> o el módulo <strong>token</strong> o <strong>tokenize</strong> seguramente tuviste el siguiente error:

<blockquote>NameError: name 'N_TOKENS' is not defined</blockquote>

Como ya saben, tengo varios bots funcionando en mi RaspberryPi y el día de ayer al actualizar la librería telebot que es la que usan mis bots empecé a tener ese error dejando inutilizados a mis bots haciendo sonar mi alarma interna al instante.

<!--more-->

Buscando y rebuscando por la web llegué al grandioso sitio StackOverflow en el cual <a href="http://stackoverflow.com/questions/29732862/nltk-and-scipy-are-not-executing-my-python-script">dan algunas indicaciones para poder resolver ésto</a> que, para mí, es algo temporal ya que se trata de un error en la configuración de Python (y yo pensando que tenía que pasar todos mis bots a Python3).

<strong>Aclaración: Yo hice ésto en mi RaspberryPi con Raspbian pero ustedes lo pueden hacer en cualquier distro Linux ya que el problema es propio de Python.</strong>

Básicamente tenemos que hacer una serie de pasos que les describo a continuación:

<ol>
    <li>Loguearnos como root y acceder al directorio de python:
<blockquote>$ sudo su
# cd /usr/lib/python2.7         <strong>(En mi caso esa es la versión de Python que uso, ustedes pueden tener una diferente)</strong></blockquote>
</li>
    <li>Una vez dentro del directorio vamos a editar el archivo tokenize.py
<blockquote># vim <strong>(o el editor que usen)</strong> tokenize.py</blockquote>
</li>
    <li>Buscamos la línea <strong>" from token import * "</strong> y la modificamos por  <strong>" from token2 import * ". </strong>Está mas o menos por la linea 30.
<strong>
<img class="  wp-image-4135 aligncenter" src="https://blogneositelinux.files.wordpress.com/2017/02/tokenize.png" alt="tokenize" width="290" height="93" />
</strong></li>
    <li>Guardamos, salimos del editor y modificamos el nombre del archivo token.py a token2.py. Hacemos un backup antes, por las dudas.
<blockquote># cp token.py     token.py.bkp
# mv token.py   token2.py</blockquote>
</li>
    <li>Ejecutamos el proceso que nos daba el error y chequeamos si todo está bien. Si necesitamos otra librería o módulo, eso corre por cuenta de cada uno, en mi caso haciendo solo ésto el error se solucionó y pude volver a ejecutar los bots sin problemas.</li>
</ol>

Dejo registrado ésto porque vi que éste error no está comentado en español pero al parecer es algo que está pasando seguido en Python. Si saben de algún amigo que se está rompiendo la cabeza para poder salir de éste error, ya saben, NeoSiteLinux al rescate.

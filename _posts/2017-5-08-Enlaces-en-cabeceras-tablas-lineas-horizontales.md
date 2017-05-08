---
layout: post
title: Enlaces a cabeceras con identificadores, Tablas y Lineas Horizontales
---

Hoy vamos a ver algo muy bueno para hacer. Lo primero que vamos a hacer es poner enlaces en encabezados para llamarlos dentro del mismo texto.
También vamos a ver como crear tablas con datos dentro. Y por último vamos a ver como poner lineas horizontales divisorias en nuestro archivo markdown.
Empecemos.

### Enlaces en Cabeceras usando identificadores
Para insertar un enlace en una cabecera y poder usarla dentro del mismo documento de markdown se hace de la siguiente manera:

### Esto es una cabecera con ID (o identificador) {#cabecera1}

[Enlace a esa Cabecera](#cabecera1)

![_Logo ]({{ site.baseurl }}/images/cabecera.PNG)

### Tablas
Para insertar una tabla, se puede hacer de 2 formas, sin alineación y con alineación. Vamos a mostrar los 2 casos.

# Sin alineación:

Titulo 1 | Titulo 2
-- | --
Dato A0 | Dato B0
Dato A1 | Dato B1

![_Logo ]({{ site.baseurl }}/images/tablasin.PNG)

# Con alineación:

| Titulo A   | Titulo B  |
| ---------- | --------- |
| Dato A0    | Dato B0   |
| Dato A1    | Dato B1   |

![_Logo ]({{ site.baseurl }}/images/tablacon.PNG)

### Lineas Horizontales
Para crear líneas horizontales se debe hacer una línea rodeada de líneas en blanco y compuesta por 3 o más símbolos iguales que pueden ser guiones, asterisco o guiones bajos.
Se pueden dejar espacios en blanco entre los símbolos como para dejarla estéticamente bien.

Ejemplo:

```
***
- - -
___
```

***
- - -
___
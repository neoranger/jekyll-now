---
layout: post
title: "Configurar Github Pages con dominio propio (github+jekyll+namecheap+cloudflare)"
date: 2017-08-24
author: neositelinux
comments: true
categories: [Informacion, Aporte]
---

Como verán, hemos terminado de migrar el blog que tenía en Wordpress a github pages utilizando jekyll. Si bien, hay algunas entradas en las que se ve mucho código HTML, no las he modificado, todavía, porque no he tenido el tiempo suficiente pero prometo hacerlo.
A lo que voy es que no solo tenemos el blog en github+jekyll con el dominio .com sino que también tenemos certificado HTTPS para tener una conexión segura, algo que es fundamental tener a éstas alturas ya que al tener una conexión segura le da más confianza al usuario a la hora de navegar por la web.

### ¿Como tener un dominio propio en un blog con Github+Jekyll?
Primero hay que tener en cuenta algo, [crear un blog en github+jekyll ya te habilita a tener un dominio](https://neositelinux.com/Borradores-y-redireccion-de-dominio/), en éste caso, sería algo como ejemplo.github.io, algo totalmente funcional e incluso con certificado HTTPS, algo excelente. Pero si ya tenías un dominio para utilizar, algo como me pasa a mi y tu blog en github va a ser lo principal, es bueno que puedas utilizar ese dominio para tu blog, no te parece? Vamos a ello.

### Comprar un dominio (o conseguir uno gratis)
Sin dominio comprado o [conseguido de forma gratuita](http://www.dot.tk/es/index.html) éste post no tendría sentido, por es primordial tener un dominio. Una vez que lo hayamos conseguido, vamos a editar el archivo CNAME que tenemos en nuestro repositorio del blog y vamos a ingresarlo ahí. Si el archivo CNAME (así sin extensiones) no está, podemos crearlo sin problemas.

### Servidores DNS con Cloudflare
Ahora, lo que vamos a hacer es configurar los servidores DNS apuntando nuestro dominio a github. Para ellos vamos a crear una cuenta en [Cloudflare](https://www.cloudflare.com) ya que es súmamente sencillo. Ustedes pueden utilizar el servicio que quieran.
Una vez que tenemos una cuenta vamos a añadir el dominio que hemos creado, en éste caso les muestro como utilicé neositelinux.com. Vamos a pasar por una serie de pasos en el cual Cloudflare validará varias cosas. Una vez listo ya agregado vamos a configurar los registros DNS para el dominio.

### Configurando registros DNS
Vamos a ir a la opción DNS en Cloudflares y agregaremos 3 registros a el dominio que hemos configurado. Los registros son:

* Registro Tipo "A" apuntando a la ip: 192.30.252.153 (ip de github)
* Registro Tipo "A" apuntando a la ip: 192.30.252.154 (ip de github)
* Registro Tipo "CNAME" donde el valor será la URL de nuestro blog en github, en éste caso, neoranger.github.io

![_Logo ]({{ site.baseurl }}/images/dns_nsl.jpg)

Como ven, Cloudflare nos dará sus servidores DNS los cuales tenemos que usar, en éste caso son:
* **algin.ns.cloudflare.com**
* **sandy.ns.cloudflare.com**

Estos 2 servidores DNS son los que debemos tener configurados como NAMESERVERS en la web donde hemos registrado el dominio, en mi caso [Namecheap](https://www.namecheap.com)

![_Logo ]({{ site.baseurl }}/images/namecheap_nsl.jpg)

**Tenes presente que en Cloudflare sería bueno dejar la opción de la nube naranja puesta en los registros DNS para que el tráfico pase por Cloudflare ya que son los que nos darán la conexión segura.**

### Configurando la conexión segura (HTTPS)
Ahora lo que vamos a hacer es ir a la opción **Crypto** en Cloudflare para poder configurar la conexión segura. Lo bueno es que no tenemos que pagar certificado alguno ya que Cloudflare nos provee un certificado (compartido pero certificado HTTPS al fin) HTTPS para nuestro dominio, pero tenemos que activarlo.

* Opción SSL Chequear que esté la opción en **FULL**

![_Logo ]({{ site.baseurl }}/images/crypto1_nsl.jpg)

* Opción "Always use HTTPS": Esto sería bueno que lo tengamos en **On** ya que hará que cualquiera que quiera ingresar a nuestra web si o si tengo que utilizar la conexiónHTTPS

![_Logo ]({{ site.baseurl }}/images/crypto2_nsl.jpg)

Las demás opciones pueden quedar como están pero sería bueno que las revisaras por si te interesa usarlas.

**En el transcurso del día, a mas tardar, 2 días tendrás tu blog de github con dominio propio y conexión segura HTTPS.**

Cabe destacar también que una vez creado el dominio y todo ésto podés seguir usando tu dominio.github.io total se redirigirá al nuevo dominio que has configurado, algo muy bueno por si tenemos esparcida la URL vieja por algún lado.

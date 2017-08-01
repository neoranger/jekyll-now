---
layout: post
title: Comandos para GNU/Linux
date: 2013-01-11
author: neoranger
comments: true
categories: [Aporte]
---
Muchas veces estamos en nuestra distro GNU/Linux y queremos instalar algo o modificar cierta configuración del sistema pero no conocemos o no nos acordamos los comandos de la terminal como para hacerlo, ya que siempre es la única forma (y la mejor diría yo) de hacerlo.

Es por eso que les traemos una lista con los comandos mas conocidos y aquellos a los que tenemos que recordar leyendo un cuaderno.
Sabemos que la mejor forma de aprender es practicar, asi que es por eso que les sugerimos que si son usuarios de GNU/Linux traten de usar la consola lo mas que puedan para que puedan entender a fondo como es su sistema y mas que nada, como funciona.

Le dejamos con la lista de comandos mencionada:
<h3>Información Del Sistema</h3>
<ul>
	<li>arch: mostrar la arquitectura de la máquina (1).</li>
	<li>uname -m: mostrar la arquitectura de la máquina (2).</li>
	<li>uname -r: mostrar la versión del kernel usado.</li>
	<li>dmidecode -q: mostrar los componentes (hardware) del sistema.</li>
	<li>hdparm -i /dev/hda: mostrar las características de un disco duro.</li>
	<li>hdparm -tT /dev/sda: realizar prueba de lectura en un disco duro.</li>
	<li>cat /proc/cpuinfo: mostrar información de la CPU.</li>
	<li>cat /proc/interrupts: mostrar las interrupciones.</li>
	<li>cat /proc/meminfo: verificar el uso de memoria.</li>
	<li>cat /proc/swaps: mostrar ficheros swap.</li>
	<li>cat /proc/version: mostrar la versión del kernel.</li>
	<li>cat /proc/net/dev: mostrar adaptadores de red y estadísticas.</li>
	<li>cat /proc/mounts: mostrar el sistema de ficheros montado.</li>
	<li>lspci -tv: mostrar los dispositivos PCI.</li>
	<li>lsusb -tv: mostrar los dispositivos USB.</li>
	<li>date: mostrar la fecha del sistema.</li>
	<li>cal 2011: mostrar el almanaque de 2011.</li>
	<li>cal 07 2011: mostrar el almanaque para el mes julio de 2011.</li>
	<li>date 041217002011.00: colocar (declarar, ajustar) fecha y hora.</li>
	<li>clock -w: guardar los cambios de fecha en la BIOS.</li>
</ul>
<h3>Apagar (Reiniciar Sistema o Cerrar Sesión)</h3>
<ul>
	<li>shutdown -h now: apagar el sistema (1).</li>
	<li>init 0: apagar el sistema (2).</li>
	<li>telinit 0: apagar el sistema (3).</li>
	<li>halt: apagar el sistema (4).</li>
	<li>shutdown -h hours: minutes &amp;: apagado planificado del sistema.</li>
	<li>shutdown -c: cancelar un apagado planificado del sistema.</li>
	<li>shutdown -r now: reiniciar (1).</li>
	<li>reboot: reiniciar (2).</li>
	<li>logout: cerrar sesión.<a name="more"></a></li>
</ul>
<h3>Archivos y Directorios</h3>
<ul>
	<li>cd /home: Entrar en el directorio “home”.</li>
	<li>cd ..: Retroceder un nivel.</li>
	<li>cd ../..: Retroceder 2 niveles.</li>
	<li>cd: Ir al directorio raíz.</li>
	<li>cd ~user1: Ir al directorio user1.</li>
	<li>cd -: Ir (regresar) al directorio anterior.</li>
	<li>pwd: Mostrar el camino del directorio de trabajo.</li>
	<li>ls: Ver los ficheros de un directorio.</li>
	<li>ls -F: Ver los ficheros de un directorio.</li>
	<li>ls -l:  Mostrar los detalles de ficheros y carpetas de un directorio.</li>
	<li>ls -a: Mostrar los ficheros ocultos.</li>
	<li>ls *[0-9]*: mostrar los ficheros y carpetas que contienen números.</li>
	<li>tree: mostrar los ficheros y carpetas en forma de árbol comenzando por la raíz.(1)</li>
	<li>lstree: mostrar los ficheros y carpetas en forma de árbol comenzando por la raíz.(2)</li>
	<li>mkdir dir1: crear una carpeta o directorio con nombre ‘dir1′.</li>
	<li>mkdir dir1 dir2: crear dos carpetas o directorios simultáneamente (Crear dos directorios a la vez).</li>
	<li>mkdir -p /tmp/dir1/dir2: crear un árbol de directorios.</li>
	<li>rm -f file1: borrar el fichero llamado ‘file1′.</li>
	<li>rmdir dir1: borrar la carpeta llamada ‘dir1′.</li>
	<li>rm -rf dir1: eliminar una carpeta llamada ‘dir1′ con su contenido de forma recursiva. (Si lo borro recursivo estoy diciendo que es con su contenido).</li>
	<li>rm -rf dir1 dir2: borrar dos carpetas (directorios) con su contenido de forma recursiva.</li>
	<li>mv dir1 new_dir: renombrar o mover un fichero o carpeta (directorio).</li>
	<li>cp file1: copiar un fichero.</li>
	<li>cp file1 file2: copiar dos ficheros al unísono.</li>
	<li>cp dir /* .: copiar todos los ficheros de un directorio dentro del directorio de trabajo actual.</li>
	<li>cp -a /tmp/dir1 .: copiar un directorio dentro del directorio actual de trabajo.</li>
	<li>cp -a dir1: copiar un directorio.</li>
	<li>cp -a dir1 dir2: copiar dos directorio al unísono.</li>
	<li>ln -s file1 lnk1: crear un enlace simbólico al fichero o directorio.</li>
	<li>ln file1 lnk1: crear un enlace físico al fichero o directorio.</li>
	<li>touch -t 0712250000 file1: modificar el tiempo real (tiempo de creación) de un fichero o directorio.</li>
	<li>file file1: salida (volcado en pantalla) del tipo mime de un fichero texto.</li>
	<li>iconv -l: listas de cifrados conocidos.</li>
	<li>iconv -f fromEncoding -t toEncoding inputFile &gt; outputFile: crea una nueva forma del fichero de entrada asumiendo que está codificado en fromEncoding y convirtiéndolo a ToEncoding.</li>
	<li>find . -maxdepth 1 -name *.jpg -print -exec convert ”{}” -resize 80×60 “thumbs/{}” ;: agrupar ficheros redimensionados en el directorio actual y enviarlos a directorios en vistas de miniaturas (requiere convertir desde ImagemagicK).</li>
</ul>
<h3>Encontrar archivos</h3>
<ul>
	<li>find / -name file1: buscar fichero y directorio a partir de la raíz del sistema.</li>
	<li>find / -user user1: buscar ficheros y directorios pertenecientes al usuario ‘user1′.</li>
	<li>find /home/user1 -name *.bin: buscar ficheros con extensión ‘. bin’ dentro del directorio ‘/ home/user1′.</li>
	<li>find /usr/bin -type f -atime +100: buscar ficheros binarios no usados en los últimos 100 días.</li>
	<li>find /usr/bin -type f -mtime -10: buscar ficheros creados o cambiados dentro de los últimos 10 días.</li>
	<li>find / -name *.rpm -exec chmod 755 ‘{}’ ;: buscar ficheros con extensión ‘.rpm’ y modificar permisos.</li>
	<li>find / -xdev -name *.rpm: Buscar ficheros con extensión ‘.rpm’ ignorando los dispositivos removibles como cdrom, pen-drive, etc.…</li>
	<li>locate *.ps: encuentra ficheros con extensión ‘.ps’ ejecutados primeramente con el command ‘updatedb’.</li>
	<li>whereis halt: mostrar la ubicación de un fichero binario, de ayuda o fuente. En este caso pregunta dónde está el comando ‘halt’.</li>
	<li>which halt: mostrar la senda completa (el camino completo) a un binario / ejecutable.</li>
</ul>
<h3>Montando un sistema de ficheros</h3>
<ul>
	<li>mount /dev/hda2 /mnt/hda2: montar un disco llamado hda2. Verifique primero la existencia del directorio ‘/ mnt/hda2′; si no está, debe crearlo.</li>
	<li>umount /dev/hda2: desmontar un disco llamado hda2. Salir primero desde el punto ‘/ mnt/hda2.</li>
	<li>fuser -km /mnt/hda2: forzar el desmontaje cuando el dispositivo está ocupado.</li>
	<li>umount -n /mnt/hda2: correr el desmontaje sin leer el fichero /etc/mtab. Útil cuando el fichero es de solo lectura o el disco duro está lleno.</li>
	<li>mount /dev/fd0 /mnt/floppy: montar un disco flexible (floppy).</li>
	<li>mount /dev/cdrom /mnt/cdrom: montar un cdrom / dvdrom.</li>
	<li>mount /dev/hdc /mnt/cdrecorder: montar un cd regrabable o un dvdrom.</li>
	<li>mount /dev/hdb /mnt/cdrecorder: montar un cd regrabable / dvdrom (un dvd).</li>
	<li>mount -o loop file.iso /mnt/cdrom: montar un fichero o una imagen iso.</li>
	<li>mount -t vfat /dev/hda5 /mnt/hda5: montar un sistema de ficheros FAT32.</li>
	<li>mount /dev/sda1 /mnt/usbdisk: montar un usb pen-drive o una memoria (sin especificar el tipo de sistema de ficheros).</li>
</ul>
<h3>Espacio de Disco</h3>
<ul>
	<li>df -h: mostrar una lista de las particiones montadas.</li>
	<li>ls -lSr |more: mostrar el tamaño de los ficheros y directorios ordenados por tamaño.</li>
	<li>du -sh dir1: Estimar el espacio usado por el directorio ‘dir1′.</li>
	<li>du -sk * | sort -rn: mostrar el tamaño de los ficheros y directorios ordenados por tamaño.</li>
	<li>rpm -q -a –qf ‘%10{SIZE}t%{NAME}n’ | sort -k1,1n: mostrar el espacio usado por los paquetes rpm instalados organizados por tamaño (Fedora, Redhat y otros).</li>
	<li>dpkg-query -W -f=’${Installed-Size;10}t${Package}n’ | sort -k1,1n: mostrar el espacio usado por los paquetes instalados, organizados por tamaño (Ubuntu, Debian y otros).</li>
</ul>
<h3>Usuarios y Grupos</h3>
<ul>
	<li>groupadd nombre_del_grupo: crear un nuevo grupo.</li>
	<li>groupdel nombre_del_grupo: borrar un grupo.</li>
	<li>groupmod -n nuevo_nombre_del_grupo viejo_nombre_del_grupo: renombrar un grupo.</li>
	<li>useradd -c “Name Surname ” -g admin -d /home/user1 -s /bin/bash user1: Crear un nuevo usuario perteneciente al grupo “admin”.</li>
	<li>useradd user1: crear un nuevo usuario.</li>
	<li>userdel -r user1: borrar un usuario (‘-r’ elimina el directorio Home).</li>
	<li>usermod -c “User FTP” -g system -d /ftp/user1 -s /bin/nologin user1: cambiar los atributos del usuario.</li>
	<li>passwd: cambiar contraseña.</li>
	<li>passwd user1: cambiar la contraseña de un usuario (solamente por root).</li>
	<li>chage -E 2011-12-31 user1: colocar un plazo para la contraseña del usuario. En este caso dice que la clave expira el 31 de diciembre de 2011.</li>
	<li>pwck: chequear la sintaxis correcta el formato de fichero de ‘/etc/passwd’ y la existencia de usuarios.</li>
	<li>grpck: chequear la sintaxis correcta y el formato del fichero ‘/etc/group’ y la existencia de grupos.</li>
	<li>newgrp group_name: registra a un nuevo grupo para cambiar el grupo predeterminado de los ficheros creados recientemente.</li>
</ul>
<h3>Permisos en Ficheros (Usa ”+” para colocar permisos y ”-” para eliminar)</h3>
<ul>
	<li>ls -lh: Mostrar permisos.</li>
	<li>ls /tmp | pr -T5 -W$COLUMNS: dividir la terminal en 5 columnas.</li>
	<li>chmod ugo+rwx directory1: colocar permisos de lectura ®, escritura (w) y ejecución(x) al propietario (u), al grupo (g) y a otros (o) sobre el directorio ‘directory1′.</li>
	<li>chmod go-rwx directory1: quitar permiso de lectura ®, escritura (w) y (x) ejecución al grupo (g) y otros (o) sobre el directorio ‘directory1′.</li>
	<li>chown user1 file1: cambiar el dueño de un fichero.</li>
	<li>chown -R user1 directory1: cambiar el propietario de un directorio y de todos los ficheros y directorios contenidos dentro.</li>
	<li>chgrp group1 file1: cambiar grupo de ficheros.</li>
	<li>chown user1:group1 file1: cambiar usuario y el grupo propietario de un fichero.</li>
	<li>find / -perm -u+s: visualizar todos los ficheros del sistema con SUID configurado.</li>
	<li>chmod u+s /bin/file1: colocar el bit SUID en un fichero binario. El usuario que corriendo ese fichero adquiere los mismos privilegios como dueño.</li>
	<li>chmod u-s /bin/file1: deshabilitar el bit SUID en un fichero binario.</li>
	<li>chmod g+s /home/public: colocar un bit SGID en un directorio –similar al SUID pero por directorio.</li>
	<li>chmod g-s /home/public: desabilitar un bit SGID en un directorio.</li>
	<li>chmod o+t /home/public: colocar un bit STIKY en un directorio. Permite el borrado de ficheros solamente a los dueños legítimos.</li>
	<li>chmod o-t /home/public: desabilitar un bit STIKY en un directorio.</li>
</ul>
<h3>Atributos especiales en ficheros (Usa ”+” para colocar permisos y ”-” para eliminar)</h3>
<ul>
	<li>chattr +a file1: permite escribir abriendo un fichero solamente modo append.</li>
	<li>chattr +c file1: permite que un fichero sea comprimido / descomprimido automaticamente.</li>
	<li>chattr +d file1: asegura que el programa ignore borrar los ficheros durante la copia de seguridad.</li>
	<li>chattr +i file1: convierte el fichero en invariable, por lo que no puede ser eliminado, alterado, renombrado, ni enlazado.</li>
	<li>chattr +s file1: permite que un fichero sea borrado de forma segura.</li>
	<li>chattr +S file1: asegura que un fichero sea modificado, los cambios son escritos en modo synchronous como con sync.</li>
	<li>chattr +u file1: te permite recuperar el contenido de un fichero aún si este está cancelado.</li>
	<li>lsattr: mostrar atributos especiales.</li>
</ul>
<h3>Archivos y Ficheros comprimidos</h3>
<ul>
	<li>bunzip2 file1.bz2: descomprime in fichero llamado ‘file1.bz2′.</li>
	<li>bzip2 file1: comprime un fichero llamado ‘file1′.</li>
	<li>gunzip file1.gz: descomprime un fichero llamado ‘file1.gz’.</li>
	<li>gzip file1: comprime un fichero llamado ‘file1′.</li>
	<li>gzip -9 file1: comprime con compresión máxima.</li>
	<li>rar a file1.rar test_file: crear un fichero rar llamado ‘file1.rar’.</li>
	<li>rar a file1.rar file1 file2 dir1: comprimir ‘file1′, ‘file2′ y ‘dir1′ simultáneamente.</li>
	<li>rar x file1.rar: descomprimir archivo rar.</li>
	<li>unrar x file1.rar: descomprimir archivo rar.</li>
	<li>tar -cvf archive.tar file1: crear un tarball descomprimido.</li>
	<li>tar -cvf archive.tar file1 file2 dir1: crear un archivo conteniendo ‘file1′, ‘file2′ y’dir1′.</li>
	<li>tar -tf archive.tar: mostrar los contenidos de un archivo.</li>
	<li>tar -xvf archive.tar: extraer un tarball.</li>
	<li>tar -xvf archive.tar -C /tmp: extraer un tarball en / tmp.</li>
	<li>tar -cvfj archive.tar.bz2 dir1: crear un tarball comprimido dentro de bzip2.</li>
	<li>tar -xvfj archive.tar.bz2: descomprimir un archivo tar comprimido en bzip2</li>
	<li>tar -cvfz archive.tar.gz dir1: crear un tarball comprimido en gzip.</li>
	<li>tar -xvfz archive.tar.gz: descomprimir un archive tar comprimido en gzip.</li>
	<li>zip file1.zip file1: crear un archivo comprimido en zip.</li>
	<li>zip -r file1.zip file1 file2 dir1: comprimir, en zip, varios archivos y directorios de forma simultánea.</li>
	<li>unzip file1.zip: descomprimir un archivo zip.</li>
</ul>
<h3>Paquetes RPM (Red Hat, Fedora y similares)</h3>
<ul>
	<li>rpm -ivh package.rpm: instalar un paquete rpm.</li>
	<li>rpm -ivh –nodeeps package.rpm: instalar un paquete rpm ignorando las peticiones de dependencias.</li>
	<li>rpm -U package.rpm: actualizar un paquete rpm sin cambiar la configuración de los ficheros.</li>
	<li>rpm -F package.rpm: actualizar un paquete rpm solamente si este está instalado.</li>
	<li>rpm -e package_name.rpm: eliminar un paquete rpm.</li>
	<li>rpm -qa: mostrar todos los paquetes rpm instalados en el sistema.</li>
	<li>rpm -qa | grep httpd: mostrar todos los paquetes rpm con el nombre “httpd”.</li>
	<li>rpm -qi package_name: obtener información en un paquete específico instalado.</li>
	<li>rpm -qg “System Environment/Daemons”: mostar los paquetes rpm de un grupo software.</li>
	<li>rpm -ql package_name: mostrar lista de ficheros dados por un paquete rpm instalado.</li>
	<li>rpm -qc package_name: mostrar lista de configuración de ficheros dados por un paquete rpm instalado.</li>
	<li>rpm -q package_name –whatrequires: mostrar lista de dependencias solicitada para un paquete rpm.</li>
	<li>rpm -q package_name –whatprovides: mostar la capacidad dada por un paquete rpm.</li>
	<li>rpm -q package_name –scripts: mostrar los scripts comenzados durante la instalación /eliminación.</li>
	<li>rpm -q package_name –changelog: mostar el historial de revisions de un paquete rpm.</li>
	<li>rpm -qf /etc/httpd/conf/httpd.conf: verificar cuál paquete rpm pertenece a un fichero dado.</li>
	<li>rpm -qp package.rpm -l: mostrar lista de ficheros dados por un paquete rpm que aún no ha sido instalado.</li>
	<li>rpm –import /media/cdrom/RPM-GPG-KEY: importar la firma digital de la llave pública.</li>
	<li>rpm –checksig package.rpm: verificar la integridad de un paquete rpm.</li>
	<li>rpm -qa gpg-pubkey: verificar la integridad de todos los paquetes rpm instalados.</li>
	<li>rpm -V package_name: chequear el tamaño del fichero, licencias, tipos, dueño, grupo, chequeo de resumen de MD5 y última modificación.</li>
	<li>rpm -Va: chequear todos los paquetes rpm instalados en el sistema. Usar con cuidado.</li>
	<li>rpm -Vp package.rpm: verificar un paquete rpm no instalado todavía.</li>
	<li>rpm2cpio package.rpm | cpio –extract –make-directories *bin*: extraer fichero ejecutable desde un paquete rpm.</li>
	<li>rpm -ivh /usr/src/redhat/RPMS/arch/package.rpm: instalar un paquete construido desde una fuente rpm.</li>
	<li>rpmbuild –rebuild package_name.src.rpm: construir un paquete rpm desde una fuente rpm.</li>
</ul>
<h3>Actualizador de paquetes YUM (Red Hat, Fedora y similares)</h3>
<ul>
	<li>yum install package_name: descargar e instalar un paquete rpm.</li>
	<li>yum localinstall package_name.rpm: este instalará un RPM y tratará de resolver todas las dependencies para ti, usando tus repositorios.</li>
	<li>yum update package_name.rpm: actualizar todos los paquetes rpm instalados en el sistema.</li>
	<li>yum update package_name: modernizar / actualizar un paquete rpm.</li>
	<li>yum remove package_name: eliminar un paquete rpm.</li>
	<li>yum list: listar todos los paquetes instalados en el sistema.</li>
	<li>yum search package_name: Encontrar un paquete en repositorio rpm.</li>
	<li>yum clean packages: limpiar un caché rpm borrando los paquetes descargados.</li>
	<li>yum clean headers: eliminar todos los ficheros de encabezamiento que el sistema usa para resolver la dependencia.</li>
	<li>yum clean all: eliminar desde los paquetes caché y ficheros de encabezado.</li>
</ul>
<h3>Paquetes Deb (Debian, Ubuntu y derivados)</h3>
<ul>
	<li>dpkg -i package.deb: instalar / actualizar un paquete deb.</li>
	<li>dpkg -r package_name: eliminar un paquete deb del sistema.</li>
	<li>dpkg -l: mostrar todos los paquetes deb instalados en el sistema.</li>
	<li>dpkg -l | grep httpd: mostrar todos los paquetes deb con el nombre “httpd”</li>
	<li>dpkg -s package_name: obtener información en un paquete específico instalado en el sistema.</li>
	<li>dpkg -L package_name: mostar lista de ficheros dados por un paquete instalado en el sistema.</li>
	<li>dpkg –contents package.deb: mostrar lista de ficheros dados por un paquete no instalado todavía.</li>
	<li>dpkg -S /bin/ping: verificar cuál paquete pertenece a un fichero dado.</li>
	<li>Actualizador de paquetes APT (Debian, Ubuntu y derivados)</li>
	<li>apt-get install package_name: instalar / actualizar un paquete deb.</li>
	<li>apt-cdrom install package_name: instalar / actualizar un paquete deb desde un cdrom.</li>
	<li>apt-get update: actualizar la lista de paquetes.</li>
	<li>apt-get upgrade: actualizar todos los paquetes instalados.</li>
	<li>apt-get remove package_name: eliminar un paquete deb del sistema.</li>
	<li>apt-get check: verificar la correcta resolución de las dependencias.</li>
	<li>apt-get clean: limpiar cache desde los paquetes descargados.</li>
	<li>apt-cache search searched-package: retorna lista de paquetes que corresponde a la serie «paquetes buscados».</li>
</ul>
<h3>Ver el contenido de un fichero</h3>
<ul>
	<li>cat file1: ver los contenidos de un fichero comenzando desde la primera hilera.</li>
	<li>tac file1: ver los contenidos de un fichero comenzando desde la última línea.</li>
	<li>more file1: ver el contenido a lo largo de un fichero.</li>
	<li>less file1: parecido al commando ‘more’ pero permite salvar el movimiento en el fichero así como el movimiento hacia atrás.</li>
	<li>head -2 file1: ver las dos primeras líneas de un fichero.</li>
	<li>tail -2 file1: ver las dos últimas líneas de un fichero.</li>
	<li>tail -f /var/log/messages: ver en tiempo real qué ha sido añadido al fichero.</li>
</ul>
<h3>Manipulación de texto</h3>
<ul>
	<li>cat file1 file2 .. | command file1_in.txt_or_file1_out.txt: sintaxis general para la manipulación de texto utilizando PIPE, STDIN y STDOUT.</li>
	<li>cat file1 | command( sed, grep, awk, grep, etc…) &gt; result.txt: sintaxis general para manipular un texto de un fichero y escribir el resultado en un fichero nuevo.</li>
	<li>cat file1 | command( sed, grep, awk, grep, etc…) » result.txt: sintaxis general para manipular un texto de un fichero y añadir resultado en un fichero existente.</li>
	<li>grep Aug /var/log/messages: buscar palabras “Aug” en el fichero ‘/var/log/messages’.</li>
	<li>grep ^Aug /var/log/messages: buscar palabras que comienzan con “Aug” en fichero ‘/var/log/messages’</li>
	<li>grep [0-9] /var/log/messages: seleccionar todas las líneas del fichero ‘/var/log/messages’ que contienen números.</li>
	<li>grep Aug -R /var/log/*: buscar la cadena “Aug” en el directorio ‘/var/log’ y debajo.</li>
	<li>sed ‘s/stringa1/stringa2/g’ example.txt: reubicar “string1” con “string2” en ejemplo.txt</li>
	<li>sed ‘/^$/d’ example.txt: eliminar todas las líneas en blanco desde el ejemplo.txt</li>
	<li>sed ‘/ *#/d; /^$/d’ example.txt: eliminar comentarios y líneas en blanco de ejemplo.txt</li>
	<li>echo ‘esempio’ | tr ‘[:lower:]‘ ‘[:upper:]‘: convertir minúsculas en mayúsculas.</li>
	<li>sed -e ’1d’ result.txt: elimina la primera línea del fichero ejemplo.txt</li>
	<li>sed -n ‘/stringa1/p’: visualizar solamente las líneas que contienen la palabra “string1”.</li>
</ul>
<h3>Establecer caracter y conversión de ficheros</h3>
<ul>
	<li>dos2unix filedos.txt fileunix.txt: convertir un formato de fichero texto desde MSDOS a UNIX.</li>
	<li>unix2dos fileunix.txt filedos.txt: convertir un formato de fichero de texto desde UNIX a MSDOS.</li>
	<li>recode ..HTML page.html: convertir un fichero de texto en html.</li>
	<li>recode -l | more: mostrar todas las conversiones de formato disponibles.</li>
</ul>
<h3>Análisis del sistema de ficheros</h3>
<ul>
	<li>badblocks -v /dev/hda1: Chequear los bloques defectuosos en el disco hda1.</li>
	<li>fsck /dev/hda1: reparar / chequear la integridad del fichero del sistema Linux en el disco hda1.</li>
	<li>fsck.ext2 /dev/hda1: reparar / chequear la integridad del fichero del sistema ext 2 en el disco hda1.</li>
	<li>e2fsck /dev/hda1: reparar / chequear la integridad del fichero del sistema ext 2 en el disco hda1.</li>
	<li>e2fsck -j /dev/hda1: reparar / chequear la integridad del fichero del sistema ext 3 en el disco hda1.</li>
	<li>fsck.ext3 /dev/hda1: reparar / chequear la integridad del fichero del sistema ext 3 en el disco hda1.</li>
	<li>fsck.vfat /dev/hda1: reparar / chequear la integridad del fichero sistema fat en el disco hda1.</li>
	<li>fsck.msdos /dev/hda1: reparar / chequear la integridad de un fichero del sistema dos en el disco hda1.</li>
	<li>dosfsck /dev/hda1: reparar / chequear la integridad de un fichero del sistema dos en el disco hda1.</li>
</ul>
<h3>Formatear un sistema de ficheros</h3>
<ul>
	<li>mkfs /dev/hda1: crear un fichero de sistema tipo Linux en la partición hda1.</li>
	<li>mke2fs /dev/hda1: crear un fichero de sistema tipo Linux ext 2 en hda1.</li>
	<li>mke2fs -j /dev/hda1: crear un fichero de sistema tipo Linux ext3 (periódico) en la partición hda1.</li>
	<li>mkfs -t vfat 32 -F /dev/hda1: crear un fichero de sistema FAT32 en hda1.</li>
	<li>fdformat -n /dev/fd0: formatear un disco flooply.</li>
	<li>mkswap /dev/hda3: crear un fichero de sistema swap.</li>
</ul>
<h3>Trabajo con la SWAP</h3>
<ul>
	<li>mkswap /dev/hda3: crear fichero de sistema swap.</li>
	<li>swapon /dev/hda3: activando una nueva partición swap.</li>
	<li>swapon /dev/hda2 /dev/hdb3: activar dos particiones swap.</li>
</ul>
<h3>Respaldos (Backup)</h3>
<ul>
	<li>dump -0aj -f /tmp/home0.bak /home: hacer una salva completa del directorio ‘/home’.</li>
	<li>dump -1aj -f /tmp/home0.bak /home: hacer una salva incremental del directorio ‘/home’.</li>
	<li>restore -if /tmp/home0.bak: restaurando una salva interactivamente.</li>
	<li>rsync -rogpav –delete /home /tmp: sincronización entre directorios.</li>
	<li>rsync -rogpav -e ssh –delete /home ip_address:/tmp: rsync a través del túnel SSH.</li>
	<li>rsync -az -e ssh –delete ip_addr:/home/public /home/local: sincronizar un directorio local con un directorio remoto a través de ssh y de compresión.</li>
	<li>rsync -az -e ssh –delete /home/local ip_addr:/home/public: sincronizar un directorio remoto con un directorio local a través de ssh y de compresión.</li>
	<li>dd bs=1M if=/dev/hda | gzip | ssh user@ip_addr ‘dd of=hda.gz’: hacer una salva de un disco duro en un host remoto a través de ssh.</li>
	<li>dd if=/dev/sda of=/tmp/file1: salvar el contenido de un disco duro a un fichero. (En este caso el disco duro es “sda” y el fichero “file1”).</li>
	<li>tar -Puf backup.tar /home/user: hacer una salva incremental del directorio ‘/home/user’.</li>
	<li>( cd /tmp/local/ &amp;&amp; tar c . ) | ssh -C user@ip_addr ‘cd /home/share/ &amp;&amp; tar x -p’: copiar el contenido de un directorio en un directorio remoto a través de ssh.</li>
	<li>( tar c /home ) | ssh -C user@ip_addr ‘cd /home/backup-home &amp;&amp; tar x -p’: copiar un directorio local en un directorio remoto a través de ssh.</li>
	<li>tar cf – . | (cd /tmp/backup ; tar xf – ): copia local conservando las licencias y enlaces desde un directorio a otro.</li>
	<li>find /home/user1 -name ‘*.txt’ | xargs cp -av –target-directory=/home/backup/ –parents: encontrar y copiar todos los ficheros con extensión ‘.txt’ de un directorio a otro.</li>
	<li>find /var/log -name ‘*.log’ | tar cv –files-from=- | bzip2 &gt; log.tar.bz2: encontrar todos los ficheros con extensión ‘.log’ y hacer un archivo bzip.</li>
	<li>dd if=/dev/hda of=/dev/fd0 bs=512 count=1: hacer una copia del MRB (Master Boot Record) a un disco floppy.</li>
	<li>dd if=/dev/fd0 of=/dev/hda bs=512 count=1: restaurar la copia del MBR (Master Boot Record) salvada en un floppy.</li>
</ul>
<h3>CD-ROM</h3>
<ul>
	<li>cdrecord -v gracetime=2 dev=/dev/cdrom -eject blank=fast -force: limpiar o borrar un cd regrabable.</li>
	<li>mkisofs /dev/cdrom &gt; cd.iso: crear una imagen iso de cdrom en disco.</li>
	<li>mkisofs /dev/cdrom | gzip &gt; cd_iso.gz: crear una imagen comprimida iso de cdrom en disco.</li>
	<li>mkisofs -J -allow-leading-dots -R -V “Label CD” -iso-level 4 -o ./cd.iso data_cd: crear una imagen iso de un directorio.</li>
	<li>cdrecord -v dev=/dev/cdrom cd.iso: quemar una imagen iso.</li>
	<li>gzip -dc cd_iso.gz | cdrecord dev=/dev/cdrom -: quemar una imagen iso comprimida.</li>
	<li>mount -o loop cd.iso /mnt/iso: montar una imagen iso.</li>
	<li>cd-paranoia -B: llevar canciones de un cd a ficheros wav.</li>
	<li>cd-paranoia – ”-3”: llevar las 3 primeras canciones de un cd a ficheros wav.</li>
	<li>cdrecord –scanbus: escanear bus para identificar el canal scsi.</li>
	<li>dd if=/dev/hdc | md5sum: hacer funcionar un md5sum en un dispositivo, como un CD.</li>
</ul>
<h3>Trabajo con la RED ( LAN y Wi-Fi)</h3>
<ul>
	<li>ifconfig eth0: mostrar la configuración de una tarjeta de red Ethernet.</li>
	<li>ifup eth0: activar una interface ‘eth0′.</li>
	<li>ifdown eth0: deshabilitar una interface ‘eth0′.</li>
	<li>ifconfig eth0 192.168.1.1 netmask 255.255.255.0: configurar una dirección IP.</li>
	<li>ifconfig eth0 promisc: configurar ‘eth0′en modo común para obtener los paquetes (sniffing).</li>
	<li>dhclient eth0: activar la interface ‘eth0′ en modo dhcp.</li>
	<li>route -n: mostrar mesa de recorrido.</li>
	<li>route add -net 0/0 gw IP_Gateway: configurar entrada predeterminada.</li>
	<li>route add -net 192.168.0.0 netmask 255.255.0.0 gw 192.168.1.1: configurar ruta estática para buscar la red ’192.168.0.0/16′.</li>
	<li>route del 0/0 gw IP_gateway: eliminar la ruta estática.</li>
	<li>echo “1” &gt; /proc/sys/net/ipv4/ip_forward: activar el recorrido ip.</li>
	<li>hostname: mostrar el nombre del host del sistema.</li>
	<li>host www.example.com: buscar el nombre del host para resolver el nombre a una dirección ip(1).</li>
	<li>nslookup www.example.com: buscar el nombre del host para resolver el nombre a una direccióm ip y viceversa(2).</li>
	<li>ip link show: mostar el estado de enlace de todas las interfaces.</li>
	<li>mii-tool eth0: mostar el estado de enlace de ‘eth0′.</li>
	<li>ethtool eth0: mostrar las estadísticas de tarjeta de red ‘eth0′.</li>
	<li>netstat -tup: mostrar todas las conexiones de red activas y sus PID.</li>
	<li>netstat -tupl: mostrar todos los servicios de escucha de red en el sistema y sus PID.</li>
	<li>tcpdump tcp port 80: mostrar todo el tráfico HTTP.</li>
	<li>iwlist scan: mostrar las redes inalámbricas.</li>
	<li>iwconfig eth1: mostrar la configuración de una tarjeta de red inalámbrica.</li>
	<li>whois www.example.com: buscar en base de datos Whois.</li>
</ul>
<h3>Redes de Microsoft Windows (SAMBA)</h3>
<ul>
	<li>nbtscan ip_addr: resolución de nombre de red bios.</li>
	<li>nmblookup -A ip_addr: resolución de nombre de red bios.</li>
	<li>smbclient -L ip_addr/hostname: mostrar acciones remotas de un host en windows.</li>
</ul>
<h3>Tablas IP (CORTAFUEGOS)</h3>
<ul>
	<li>iptables -t filter -L: mostrar todas las cadenas de la tabla de filtro.</li>
	<li>iptables -t nat -L: mostrar todas las cadenas de la tabla nat.</li>
	<li>iptables -t filter -F: limpiar todas las reglas de la tabla de filtro.</li>
	<li>iptables -t nat -F: limpiar todas las reglas de la tabla nat.</li>
	<li>iptables -t filter -X: borrar cualquier cadena creada por el usuario.</li>
	<li>iptables -t filter -A INPUT -p tcp –dport telnet -j ACCEPT: permitir las conexiones telnet para entar.</li>
	<li>iptables -t filter -A OUTPUT -p tcp –dport http -j DROP: bloquear las conexiones HTTPpara salir.</li>
	<li>iptables -t filter -A FORWARD -p tcp –dport pop3 -j ACCEPT: permitir las conexionesPOP a una cadena delantera.</li>
	<li>iptables -t filter -A INPUT -j LOG –log-prefix “DROP INPUT”: registrando una cadena de entrada.</li>
	<li>iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE: configurar un PAT (Puerto de traducción de dirección) en eth0, ocultando los paquetes de salida forzada.</li>
	<li>iptables -t nat -A PREROUTING -d 192.168.0.1 -p tcp -m tcp –dport 22 -j DNAT –to-destination 10.0.0.2:22: redireccionar los paquetes diriguidos de un host a otro.</li>
</ul>
<h3>Monitoreando y depurando</h3>
<ul>
	<li>top: mostrar las tareas de linux usando la mayoría cpu.</li>
	<li>ps -eafw: muestra las tareas Linux.</li>
	<li>ps -e -o pid,args –forest: muestra las tareas Linux en un modo jerárquico.</li>
	<li>pstree: mostrar un árbol sistema de procesos.</li>
	<li>kill -9 ID_Processo: forzar el cierre de un proceso y terminarlo.</li>
	<li>kill -1 ID_Processo: forzar un proceso para recargar la configuración.</li>
	<li>lsof -p $$: mostrar una lista de ficheros abiertos por procesos.</li>
	<li>lsof /home/user1: muestra una lista de ficheros abiertos en un camino dado del sistema.</li>
	<li>strace -c ls &gt;/dev/null: mostrar las llamadas del sistema hechas y recibidas por un proceso.</li>
	<li>strace -f -e open ls &gt;/dev/null: mostrar las llamadas a la biblioteca.</li>
	<li>watch -n1 ‘cat /proc/interrupts’: mostrar interrupciones en tiempo real.</li>
	<li>last reboot: mostrar historial de reinicio.</li>
	<li>lsmod: mostrar el kernel cargado.</li>
	<li>free -m: muestra el estado de la RAM en megabytes.</li>
	<li>smartctl -A /dev/hda: monitorear la fiabilidad de un disco duro a través de SMART.</li>
	<li>smartctl -i /dev/hda: chequear si SMART está activado en un disco duro.</li>
	<li>tail /var/log/dmesg: mostrar eventos inherentes al proceso de carga del kernel.</li>
	<li>tail /var/log/messages: mostrar los eventos del sistema.</li>
</ul>
<h3>Otros comandos útiles</h3>
<ul>
	<li>apropos …keyword: mostrar una lista de comandos que pertenecen a las palabras claves de un programa; son útiles cuando tú sabes qué hace tu programa, pero de sconoces el nombre del comando.</li>
	<li>man ping: mostrar las páginas del manual on-line; por ejemplo, en un comando ping, usar la opción ‘-k’ para encontrar cualquier comando relacionado.</li>
	<li>whatis …keyword: muestra la descripción de lo que hace el programa.</li>
	<li>mkbootdisk –device /dev/fd0 uname -r: crear un floppy boteable.</li>
	<li>gpg -c file1: codificar un fichero con guardia de seguridad GNU.</li>
	<li>gpg file1.gpg: decodificar un fichero con Guardia de seguridad GNU.</li>
	<li>wget -r www.example.com: descargar un sitio web completo.</li>
	<li>wget -c www.example.com/file.iso: descargar un fichero con la posibilidad de parar la descargar y reanudar más tarde.</li>
	<li>echo ‘wget -c www.example.com/files.iso‘ | at 09:00: Comenzar una descarga a cualquier hora. En este caso empezaría a las 9 horas.</li>
	<li>ldd /usr/bin/ssh: mostrar las bibliotecas compartidas requeridas por el programa ssh.</li>
	<li>alias hh=’history’: colocar un alias para un commando –hh= Historial.</li>
	<li>chsh: cambiar el comando Shell.</li>
	<li>chsh –list-shells: es un comando adecuado para saber si tienes que hacer remoto en otra terminal.</li>
	<li>who -a: mostrar quien está registrado, e imprimir hora del último sistema de importación, procesos muertos, procesos de registro de sistema, procesos activos producidos por init, funcionamiento actual y últimos cambios del reloj del sistema.</li>
</ul>

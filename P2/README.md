# Server MYSQL
Dockerfile  
Hacer un dockerfile para levantar un servicio mysql
1) Usar la siguiente imagen rhscl/mysql-57-rhel7
1) Copiar http://legacy.redhat.com/pub/redhat/linux/9/en/doc/RH-DOCS/pdf-en/rhl-gsg-es.pdf a /var/www
2) Ejecutar el contenedor con las siguientes variables de entorno MYSQL_USER=user1,MYSQL_PASSWORD=mypa55,MYSQL_DATABASE=items,MYSQL_ROOT_PASSWORD=r00tpa55
3) PORTFORWARD del port de host 13306 a 3306 del contenedor 
4) Crear un volumen en el contendor de la carpeta DB para salvar la base de datos en /var/local/mysql
5) Copiar el archivo files/do180.mysql a /opt/app-root/src
8) Corre como servicio

Scripts  
Crear scripts de build, start, stop, prueba, logs.
1) Crear un script llamado build.sh para hacer el build con Nombre de la imagen do180-p2, Variable de build NOMNBRE ingresar su nombre, luego mostrar la imagen creada
2) Crear un script llamado start.sh para que inicie un contenedor llamado do180-p2c y exponga el puerto 13306:3306 y le pases la variable de enorno del punto 3 de Dockerfile
3) Crear un script llamado prueba.sh para hacer un curl de index.html y index2.html al puerto expuesto en el punto 2, haga un echo de la variable de entrorno ENTORNO
4) Crear un script llamado stop.sh para stopear el contenedor y eliminar el contenedor
5) Crear un script llamado logs.sh para obtener los ultimos 20 logs
6) Crear un script para tagear la imagen y subirla a docker.io tambien salvarla a imagen-local.tar
7) hacer commit, diff


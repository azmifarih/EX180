#!/bin/bash

sudo mkdir /var/moscodb
sudo chown -R  27:27 /var/moscodb
sudo semanage fcontext -a -t container_file_t '/var/moscodb(/.*)?'
sudo restorecon -Rv /var/moscodb
ls -ldZ /var/moscodb

# Creamos un directorio donde vamos a persistir informacion
#sudo mkdir /var/dbmysql

# En el caso de MySQL tomado del repositorio de Red Hat el contenedor corre con el UID 27.
#sudo chown -R 27:27 /var/dbmysql

# Aplicamos el contexto de SELinux al directorio
#sudo semanage fcontext -a -t container_file_t '/var/dbmysql(/.*)?'

# Aplicamos SELinux policy
#sudo restorecon -Rv /var/dbmysql

# Chequemos los permisos.
#ls -dZ /var/dbmysql


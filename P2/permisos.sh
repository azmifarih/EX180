#!/bin/bash

sudo semanage fcontext -a -t container_file_t '/home/sebastianmascolo/Semperti/Cursos/DO180/EX180-PRACTICE/P2/mysql(/.*)?'
sudo restorecon -F -Rv /home/sebastianmascolo/Semperti/Cursos/DO180/EX180-PRACTICE/P2/mysql
ls -ldZ

#!/bin/bash

sudo podman run -d  --name do180-p21  -p 13306:3306 -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=do180 -e MYSQL_ROOT_PASSWORD=r00tpa5 do180-p2
#sudo podman run -d  --name do180-p21 -v ${PWD}/mysql:/opt/app-root/src:Z -p 13306:3306 -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa5 rhscl/mysql-57-rhel7

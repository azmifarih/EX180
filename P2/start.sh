#!/bin/bash

sudo podman run -d  --name do180-p2 -p 13306:3306 -e MYSQL_USER=user1 -e MYSQL_PASSWORD=mypa55 -e MYSQL_DATABASE=items -e MYSQL_ROOT_PASSWORD=r00tpa5 rhscl/mysql-57-rhel7

#!/bin/bash

sudo podman exec -ti do180-p21 /opt/rh/rh-mysql57/root/usr/bin/mysql -uroot do180 -e "show tables"

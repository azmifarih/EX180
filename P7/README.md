este es con podman, hace varios build y usa 2 contenedores una db y un node.

7.02  
1) Hacer un build de  /home/student/DO180/labs/multicontainer-design/images/mysql/Dockerfile
sudo podman build -t do180/mysql-57-rhel7 --layers=false .
sudo podman images
2) Hacer un build de  /home/student/DO180/labs/multicontainer-design/images/nodejs/Dockerfile
sudo podman build -t do180/nodejs --layers=false .
Este Dockerfiles tiene un ENV HOME=/opt/app-root/src que luego usa en WORKDIR ${HOME}
3) Hacer un build del child image /home/student/DO180/labs/multicontainer-design/deploy/nodejs/build.sh 
basicamente tiene un sudo podman build -t do180/todonodejs --build-arg NEXUS_BASE_URL=ALGO .

Dockerfile
FROM do180/nodejs
ARG NEXUS_BASE_URL
MAINTAINER username <username@example.com>
COPY run.sh build ${HOME}/
RUN scl enable rh-nodejs8 'npm install --registry=http://$NEXUS_BASE_URL/repository/nodejs/'

4)


4.1) Edit the run.sh file located at /home/student/DO180/labs/multicontainer-design/deploy/nodejs/networked to insert the podman run command at the appropriate line for invoking mysql container. The following screen shows the exact podman command to insert into the file.

sudo podman run -d --name mysql -e MYSQL_DATABASE=items -e MYSQL_USER=user1 \
-e MYSQL_PASSWORD=mypa55 -e MYSQL_ROOT_PASSWORD=r00tpa55 \
-v $PWD/work/data:/var/lib/mysql/data \
-v $PWD/work/init:/var/lib/mysql/init -p 30306:3306 \
--ip 10.88.100.101 do180/mysql-57-rhel7



4.2) In the same run.sh file, insert another podman run command at the appropriate line to run the todoapi container. The following screen shows the docker command to insert into the file.

sudo podman run -d --name todoapi -e MYSQL_DATABASE=items -e MYSQL_USER=user1 \
-e MYSQL_PASSWORD=mypa55 -p 30080:30080 \
do180/todonodejs




6) Examine the environment variables of the API container.

Run the following command to explore the environment variables exposed in the API container.

[student@workstation networked]$ sudo podman exec -it todoapi env
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
TERM=xterm
HOSTNAME=
container=oci
NODEJS_VERSION=8.0
HOME=/opt/app-root/src
MYSQL_DATABASE=items
MYSQL_USER=user1
MYSQL_PASSWORD=mypa55



7.1) Run a curl command to test the REST API for the To Do List application.

[student@workstation networked]$ curl -w "\n" \
> http://127.0.0.1:30080/todo/api/items/1
{"id":1,"description":"Pick up newspaper","done":false}




7.04 y 7.05 buildea contenedores y luego usa un template para crear los pods en ocp



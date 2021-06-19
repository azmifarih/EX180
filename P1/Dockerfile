FROM centos

ARG NOMBRE=redhat

MAINTAINER mosco moscolo@gmail.com

RUN    yum install -y httpd && \
       yum clean all

COPY ./files/index.html /var/www/html/index2.html

ENV PORT=80

EXPOSE ${PORT}

RUN echo "Hola ${NOMBRE}!!" > /var/www/html/index.html

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]

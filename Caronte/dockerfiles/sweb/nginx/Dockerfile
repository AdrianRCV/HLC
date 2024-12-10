FROM usuario/ubuntubase

ENV USUARIO="jorge"
ENV PASSWORD="abc"
ARG TZ
ARG CONTEXT
ARG PROYECTO
USER root
RUN apt update && apt install -yq --no-install-recommends \
    nginx

#RUN mkdir /root/admin/nginx
COPY ./proyectos/${PROYECTO}/deploy/config/default.conf /etc/nginx/conf.d/default.conf
# verificar en entrypoint la existencia de /etc/nginx/conf.f y /var/www/html
#COPY ./proyectos/${PROYECTO}/deploy/config /root/admin/nginx
#COPY ./proyectos/${PROYECTO}/deploy/html /root/admin/nginx
#Examen:
COPY ./proyectos/${PROYECTO}/deploy/html /var/www/html    
#instalo nginx/apache en usuario www-data
# el propietario de /var/www
RUN chmod -R 755 /var/www/html
RUN mkdir -p /var/log/nginx
EXPOSE 80

USER root
RUN mkdir /root/admin/nginx
COPY ./dockerfiles/sweb/nginx/admin/start.sh /root/admin/nginx
RUN chmod +x /root/admin/nginx/start.sh

WORKDIR /root/admin
ENTRYPOINT ["/root/admin/nginx/start.sh"]
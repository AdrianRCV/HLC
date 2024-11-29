FROM usuario/ubuntubase

ARG TZ 
ARG PROYECTO
ARG CONTEXT

RUN apt update && apt install -yq --no-install-recommends \
    nginx 

COPY ./dockerfiles/sweb/nginx/admin /root/admin/nginx
RUN chmod +x /root/admin/nginx/start.sh
EXPOSE 80

ENTRYPOINT [ "/root/admin/nginx/start.sh" ]
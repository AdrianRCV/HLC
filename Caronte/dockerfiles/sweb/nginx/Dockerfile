FROM usuario/ubuntubase

ENV USUARIO="jorge"
ENV PASSWORD="abc"
ARG TZ
ARG CONTEXT
ARG PROYECTO
USER root
RUN apt update && apt install -yq --no-install-recommends \
    nginx

RUN mkdir /root/admin/nginx
COPY ./dockerfiles/sweb/nginx/admin/start.sh /root/admin/nginx
RUN chmod +x /root/admin/nginx/start.sh

WORKDIR /root/admin
ENTRYPOINT ["/root/admin/nginx/start.sh"]
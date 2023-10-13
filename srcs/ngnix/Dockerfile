FROM debian:bullseye

EXPOSE 443

RUN apt -y update && apt install -y nginx && apt install openssl -y && mkdir -p /etc/nginx/ssl/ && \
     openssl req -x509 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.crt -days 365 -subj '/CN=localhost' -nodes

COPY ./tools/default /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
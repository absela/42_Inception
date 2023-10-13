FROM debian:bullseye

EXPOSE 9000

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install php-fpm php-mysql wget -y

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar  \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/script.sh /

CMD ["bash", "/script.sh"]

# syntax=docker/dockerfile:1
FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive
ARG LC_ALL=en_US.UTF-8
ARG LANG=en_US.UTF-8
ARG LANGUAGE=en

RUN apt-get update && \
	apt-get install -y curl dirmngr gnupg apt-transport-https ca-certificates

RUN apt-get -qq install \
	nginx-common nginx-light tzdata

RUN apt-get -qq install \
	php-fpm php-apcu php-bcmath php-cli php-common php-curl php-geshi php-igbinary php-intl php-json php-ldap php-mbstring php-memcached php-msgpack php-mysql php-opcache php-phpseclib php-random-compat php-readline php-xml php-zip

# install separately to prevent instaling Apache
RUN apt-get -qq install php \
	php-gd
	#php-imagick

COPY etc/nginx/sites-available/owncloud.conf /etc/nginx/sites-available/owncloud.conf
COPY etc/nginx/sites-enabled/owncloud.conf /etc/nginx/sites-enabled/owncloud.conf
COPY etc/php/7.2/fpm/pool.d/www.conf /etc/php/7.2/fpm/pool.d/www.conf

RUN curl -s https://download.owncloud.com/server/stable/owncloud-10.5.0.tar.bz2 | tar xjvf - -C /var/www
RUN chown -R www-data:www-data /var/www/owncloud

#RUN curl -o /etc/apt/trusted.gpg.d/mariadb_release_signing_key.asc 'https://mariadb.org/mariadb_release_signing_key.asc'
#RUN sh -c "echo 'deb https://mirror.netcologne.de/mariadb/repo/10.3/ubuntu bionic main' > /etc/apt/sources.list.d/MariaDB.list"

#RUN apt-get update && \
#	mariadb-common mariadb-server mariadb-client

# RUN nc -vz 127.0.0.1 3306 || exit 1

EXPOSE 80

STOPSIGNAL SIGTERM

CMD nginx -t
#CMD nginx -g 'daemon off;'

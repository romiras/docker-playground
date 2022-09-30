FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive
ARG LC_ALL=en_US.UTF-8
ARG LANG=en_US.UTF-8
ARG LANGUAGE=en
ARG TZ=Europe/Kiev

RUN apt-get update && \
	apt-get install -y curl dirmngr gnupg apt-transport-https ca-certificates
RUN curl -o /etc/apt/trusted.gpg.d/mariadb_release_signing_key.asc 'https://mariadb.org/mariadb_release_signing_key.asc'
RUN sh -c "echo 'deb https://mirror.netcologne.de/mariadb/repo/10.3/ubuntu bionic main' > /etc/apt/sources.list.d/MariaDB.list"
RUN apt-get update && \
	apt-get -qq install \
	mariadb-common mariadb-server mariadb-client

RUN apt-get -qq install \
	php php7.2 php-apcu php-bcmath php-cli php-common php-curl php-fpm php-gd php-geshi php-igbinary php-imagick php-intl php-json php-ldap php-mbstring php-memcached php-msgpack php-mysql php-phpseclib php-random-compat php-xml php-zip php7.2-bcmath php7.2-cli php7.2-common php7.2-curl php7.2-fpm php7.2-gd php7.2-intl php7.2-json php7.2-ldap php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-readline php7.2-xml php7.2-zip

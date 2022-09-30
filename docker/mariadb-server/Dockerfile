FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive
ARG LC_ALL=en_US.UTF-8
ARG LANG=en_US.UTF-8
ARG LANGUAGE=en

RUN apt-get update && \
	apt-get install -y curl dirmngr gnupg apt-transport-https ca-certificates
RUN curl -o /etc/apt/trusted.gpg.d/mariadb_release_signing_key.asc 'https://mariadb.org/mariadb_release_signing_key.asc'
RUN sh -c "echo 'deb https://mirror.netcologne.de/mariadb/repo/10.3/ubuntu bionic main' > /etc/apt/sources.list.d/MariaDB.list"
RUN apt-get update && \
	apt-get -qq install \
	mariadb-common mariadb-server mariadb-client

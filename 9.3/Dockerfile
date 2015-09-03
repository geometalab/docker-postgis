FROM postgres:9.3

MAINTAINER njordan@hsr.ch

RUN localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

ENV POSTGIS_MAJOR 2.1
ENV POSTGIS_VERSION 2.1.7+dfsg-0~exp1.pgdg70+1

RUN ["echo", "deb http://http.debian.net/debian wheezy-backports main", ">>", "/etc/apt/sources.list"]
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&\
    DEBIAN_FRONTEND=noninteractive apt-get -y install\
    postgresql-9.3-postgis-2.1\
    postgresql-9.3-postgis-scripts

COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

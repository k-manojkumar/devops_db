FROM mysql:latest

MAINTAINER me

ENV MYSQL_DATABASE=dm_db \
    MYSQL_ROOT_PASSWORD=root

ADD DM_DB_Scripts.sql /docker-entrypoint-initdb.d

EXPOSE 3306
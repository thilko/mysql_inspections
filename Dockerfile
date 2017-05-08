FROM mysql:8.0.1

ENV MYSQL_ROOT_PASSWORD changeme 
ENV MYSQL_DATABASE pathfinder

COPY tables.sql /docker-entrypoint-initdb.d



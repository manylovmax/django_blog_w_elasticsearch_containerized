FROM postgres:12.0-alpine
COPY 2018-05-22.sql /docker-entrypoint-initdb.d/
ENV POSTGRES_PASSWORD easypass
ENV POSTGRES_PORT 5432
ENV POSTGRES_DB blog
ENV POSTGRES_USER postgres
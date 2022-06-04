FROM buildpack-deps:bullseye as build 

WORKDIR /app

#COPY . .

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh" ]
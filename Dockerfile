FROM mdillon/postgis:9.6-alpine
RUN apk add curl --no-cache
COPY init-user-db.sh /docker-entrypoint-initdb.d/init-user-db.sh

# postgres-remote-initdb

Run Postgres container with initial data fetched from remote url. 
This is fork of the official [postgres:alpine](https://hub.docker.com/_/postgres).

## Usage

```bash
docker build -t postgres-remote-initdb .
docker run --rm -it -p 55432:5432  \
    -e SRC_URL="http://sql.service.consul/dump" \
    -e ON_ERROR_STOP=0 \
    -e POSTGRES_PASSWORD=aaa \
    -e POSTGRES_DB=aaa \
    -e POSTGRES_USER=aaa \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v postgres_data:/var/lib/postgresql/data/pgdata \
    postgres-remote-initdb
```

Variables:

- `SRC_URL` - URI of server that returns sql dump
- `ON_ERROR_STOP` - psql's ON_ERROR_STOP variable, default is 0
- `POSTGRES_PASSWORD` - same as in official image
- `POSTGRES_DB` - same as in official image
- `POSTGRES_USER` - same as in official image
- `PGDATA` - same as in official image

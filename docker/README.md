# Niagara Docker

The necessary Docker files to run Niagara locally with docker.

## Building an Image

```
docker build --tag my-niagara-image .
```

## Docker Compose: Running all services locally

Create all the volumes locally:

```
mkdir -p \
  volumes/certificates \
  volumes/daemon \
  volumes/homeSecurity \
  volumes/licenses \
  volumes/modules \
  volumes/phrase \
  volumes/station

touch volumes/daemon/daemon.properties
touch volumes/daemon/daemonlog.properties

sudo chown -R 5011:5011 volumes
```

OR just run `./setup-docker-compose.sh` which will do this for you

Then start docker-compose

```
docker-compose -f docker-compose.yaml up
```

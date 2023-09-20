#!/bin/bash

#
# Script to set up your local env before running docker-compose for Niagara
#


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


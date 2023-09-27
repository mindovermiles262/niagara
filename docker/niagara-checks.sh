#!/bin/bash

#
# This file will check the system for any issues that have been encoutered
# while trying to get Niagara to run inside of a container
#

# Niagara needs this /etc/mtab file to exist, otherwise it fails on startup.
# The mtab file is just a symlink to the system mounts, /proc/mounts
if ! [ -L "/etc/mtab" ]; then
  echo "[!] /etc/mtab file does not exist. Attempting to Create"
  echo "niagara" | su root -c "ln -s /proc/mounts /etc/mtab"
  echo ""
  echo "[*] Success... listing /etc/mtab...."
  ls -l /etc/mtab
else
  echo "[*] /etc/mtab file found. Continuing..."
fi


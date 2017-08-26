#!/bin/bash

if [ $# -eq 0 ]; then
  echo "[Error] require host name or ip addr!"
  echo "example: bin/add_host.sh 192.168.33.12"
  exit 1
fi

host=$1
target="./deployment"
specify_user="ansible_user=vagrant"

echo "[Log] add host $host to $target"
echo "$host $specify_user" >> $target
echo "--------------------------"
echo "[Log] $target is updated as following"
echo ""
cat $target
echo ""

#!/bin/bash -ex
until resp=$(curl -s -S -g --max-time 3 --insecure "http://neverssl.com");do
if [[ $resp == *"[CDATA[success"* ]] ; then
    echo "found"
    break
  fi
  echo "not found"
  sleep 10s
done  

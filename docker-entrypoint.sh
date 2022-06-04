#!/usr/bin/env bash

if [[$#==0]]; then
  echo 'Error: specify command'
  echo 'available commands:'
  echo ' build - install and build'
  echo ' other (like bash)'
  exit  
fi

case "$@" in 
build)
 	gcc -Wall -Wpedantic main.c mongoose.c -o c-server.bin
	;;
*)
	exec "$@"
	;;
esac





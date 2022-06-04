#!/bin/bash

if [[ $# == 0 ]]; then
  echo 'Error: specify command'
  echo 'available commands:'
  echo ' build - install and build'
  echo ' other (like bash)'
  exit  1
fi

case "$1" in 
build)
 	gcc -Wall -Wpedantic main.c mongoose.c -o c-server.bin
	;;
*)
	exec "$@"
	;;
esac





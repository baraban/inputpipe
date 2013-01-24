#!/bin/sh

HOST=$1

ssh $HOST pkill inputpipe
ssh -f -L 7192:localhost:7192 $HOST "inputpipe-server -d /dev/uinput 127.0.0.1" && inputpipe-client -a localhost


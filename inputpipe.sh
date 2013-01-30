#!/bin/sh

HOST=$1

ssh $HOST sudo pkill inputpipe
ssh -f -L 7192:localhost:7192 $HOST "sudo /usr/local/bin/inputpipe-server -d /dev/uinput" && sudo inputpipe-client -a localhost


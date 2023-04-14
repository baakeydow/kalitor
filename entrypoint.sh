#!/bin/sh

tor &
sleep 15 # wait for tor to start

if [ "$1" = "nc"  ]; then
  echo -e "GET / HTTP/1.0\r\nHost: $1\r\n\r\n" | torify "$@"
elif [ "$1" = "nmap" ]; then
  proxychains "$@"
elif [ "$1" != "/bin/bash"  ]; then
  torify "$@"
else
  /bin/bash
fi

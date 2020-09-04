#!/bin/bash

echo "-----------------------------------------------------"
echo "Bash Jack"
echo "-----------------------------------------------------"

trap exit INT

if [ -e "./stream" ]; then
  rm stream
fi
mkfifo stream

while true;
    do nc -l 8000 -w 1 < stream | awk '/HTTP/ {system("./router.sh " $2)}' > stream
done
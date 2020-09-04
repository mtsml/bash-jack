#!/bin/bash

TARGET=$1

if [ $TARGET = '/index' ]; then 
    ./controller/index.sh
elif [[ $TARGET =~ ^/detail/(.+)$ ]]; then
    ./controller/detail.sh ${BASH_REMATCH[1]}
else
    echo "HTTP/1.1 404 Not Found"
    echo "Content-Type: text/html"
    echo ""
    echo "Page Not Found"
fi
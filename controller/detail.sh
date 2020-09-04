#!/bin/bash

CHANNEL_ID=$1
CHANNEL_NM=$(./model/channel.sh $CHANNEL_ID)

echo "HTTP/1.1 200 OK"
echo "Content-Type: text/html"
echo ""
cat ./view/detail.html | sed -e "s/{channel_nm}/$CHANNEL_NM/g" -e "s/{channel_url}/$CHANNEL_ID/g"
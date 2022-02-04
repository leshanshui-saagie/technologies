#!/bin/bash

echo ""
echo "*** Setting Saagie's custom Base Path to [$SAAGIE_BASE_PATH]"
sed -i 's:PATH_REPLACE:'"$SAAGIE_BASE_PATH"':g' /etc/nginx/nginx.conf

echo ""
echo "*** Setting Saagie's custom Base Path to [$SAAGIE_BASE_PATH]"
sed -i 's:PATH2_REPLACE:'"$SAAGIE_BASE_PATH"'1:g' /etc/nginx/nginx.conf

# one line to exit if nginx exits before launching the orientdb server
nginx && server.sh

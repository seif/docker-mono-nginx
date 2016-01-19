#!/bin/bash

if [ -z "$NGINX_PORT" ]; then
	export NGINX_PORT=${PORT0:-80}
fi

if [ -z "$APP_PORT" ]; then
	export APP_PORT=${PORT1:-9000}
fi

sed -i "s/<NGINX_PORT>/$NGINX_PORT/g" /etc/nginx/sites-available/default
sed -i "s/<APP_PORT>/$APP_PORT/g" /etc/nginx/sites-available/default

/usr/sbin/nginx -g "daemon off;"

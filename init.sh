#!/usr/local/bin/dumb-init /bin/sh
/usr/local/bin/start-nginx.sh &
$@

#!/bin/bash
/etc/init.d/nginx start
/etc/init.d/php-fpm74 start
tail -f /dev/null

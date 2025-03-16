#!/bin/sh

mkdir -p volumes/{config,html}
rm -rf volumes/{config,html}/*

docker run --rm --name temp-nginx -d nginx:alpine3.21

docker cp temp-nginx:/etc/nginx/conf.d volumes/config
docker cp temp-nginx:/etc/nginx/nginx.conf volumes/config



docker cp temp-nginx:/usr/share/nginx/html volumes

docker stop temp-nginx

cp -r templates/html-folder-for-php-info volumes/html/php-info
cp templates/php-nginx-default.conf volumes/config/conf.d/default.conf
cp templates/home-page.html volumes/html/index.html

exit 0

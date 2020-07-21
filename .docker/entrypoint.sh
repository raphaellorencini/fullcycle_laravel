#!/bin/bash

composer install
docker -template /var/www/.docker/app/.env:/var/www/.env
chmod -R 777 .env
php artisan key:generate
php artisan config:clear
php artisan config:cache
php artisan migrate
php-fpm
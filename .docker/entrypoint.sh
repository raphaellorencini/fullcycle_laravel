#!/bin/bash

composer install
chmod -R 777 .env
php artisan key:generate
php artisan config:clear
php artisan config:cache
php artisan migrate
php-fpm
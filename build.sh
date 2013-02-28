#!/usr/bin/env sh

cd state/php
composer install
vendor/bin/phpunit example_car/car_test.php || { echo "car test failed"; exit 1; }
vendor/bin/phpunit example_delivery/delivery_test.php || { echo "delivery test failed"; exit 1; }
vendor/bin/phpunit example_turnstile/turnstile_test.php || { echo "turnstile test failed"; exit 1; }

echo "State pattern test suite passed with success!"

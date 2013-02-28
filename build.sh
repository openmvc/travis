#!/usr/bin/env sh

cd state/php
composer install
vendor/bin/phpunit example_car/car_test.php
vendor/bin/phpunit example_delivery/delivery_test.php
vendor/bin/phpunit example_turnstile/turnstile_test.php

echo "Done running State pattern test suites"

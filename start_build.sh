#!/bin/bash

check=$(composer-cli compose status  | grep -c RUNNING)

if [ $check -gt 0 ]; then
    echo "Build already running..."
    composer-cli compose status
    exit 1
fi

cd old_tomls
composer-cli blueprints save devOS
cd ..
composer-cli blueprints push devOS.toml
composer-cli compose start devOS live-iso

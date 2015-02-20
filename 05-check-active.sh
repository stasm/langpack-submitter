#!/bin/bash

if [ -z "$1" ]; then
    read UUID
else
    UUID=$1
fi

curling https://marketplace.allizom.org/api/v2/langpacks/$UUID/

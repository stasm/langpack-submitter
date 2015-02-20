#!/bin/bash

if [ -z "$1" ]; then
    read VAL
else
    VAL=$1
fi

curling https://marketplace.allizom.org/api/v2/apps/validation/$VAL/

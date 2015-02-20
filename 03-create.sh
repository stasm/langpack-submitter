#!/bin/bash

if [ -z "$1" ]; then
    read VAL
else
    VAL=$1
fi

curling -X POST -d '@-' https://marketplace.allizom.org/api/v2/langpacks/ <<CURL_DATA
{"upload": "$VAL"}
CURL_DATA

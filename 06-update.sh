#!/bin/bash

UUID=$1
VAL=$2

curling -X PUT -d '@-' https://marketplace.allizom.org/api/v2/langpacks/$UUID <<CURL_DATA
{"upload": "$VAL"}
CURL_DATA

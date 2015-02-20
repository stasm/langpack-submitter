#!/bin/bash

LANGPACK=$1

DATA=$( base64 -w 0 "$LANGPACK" )
curling -r -X POST -d '@-' https://marketplace.allizom.org/api/v2/apps/validation/ <<CURL_DATA
{"upload": {"type": "application/zip", "name": "$(basename $LANGPACK)", "data": "$DATA"}}
CURL_DATA

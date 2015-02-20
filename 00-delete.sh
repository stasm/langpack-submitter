#!/bin/bash

UUID=$1

curling -X DELETE https://marketplace.allizom.org/api/v2/langpacks/$UUID/

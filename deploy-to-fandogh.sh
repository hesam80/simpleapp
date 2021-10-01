#!/bin/bash
fandogh service apply \
 -f simpleapp-manifest.yml \
 -p IMAGE_URL \
 -p TAG \
 -p SEC_NAME \
 -p API_KEY
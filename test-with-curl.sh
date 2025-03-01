#!/usr/bin/env bash

printf "This should work:\n"
curl -X 'GET' 'http://127.0.0.1:8000/?token=jessica' -H 'accept: application/json'

printf "\n\nThis will fail:\n"
curl -X 'GET' 'http://127.0.0.1:8000/?token=ulf' -H 'accept: application/json'
printf "\n"

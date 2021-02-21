#!/bin/bash

apm config set strict-ssl false
# apm config set proxy https://127.0.0.1:3128
# apm config set http-proxy https://127.0.0.1:3128
apm config set https-proxy https://127.0.0.1:3128

exit 0

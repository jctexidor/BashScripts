#!/bin/bash

sudo npx cross-env ELECTRON_GET_USE_PROXY=true npm install --global electron --unsafe-perm=true

# npx cross-env ELECTRON_GET_USE_PROXY=true npm install electron --unsafe-perm=true

exit 0

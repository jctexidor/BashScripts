#!/bin/bash

sudo npx cross-env ELECTRON_GET_USE_PROXY=true GLOBAL_AGENT_HTTPS_PROXY=http://localhost:3128 npm install --global electron --unsafe-perm=true

# npx cross-env ELECTRON_GET_USE_PROXY=true GLOBAL_AGENT_HTTPS_PROXY=http://localhost:3128 npm install electron --unsafe-perm=true

exit 0

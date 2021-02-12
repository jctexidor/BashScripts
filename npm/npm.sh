#!/bin/bash

# INSTALL NPM FROM THE LINUX REPOSITORY.
sudo apt-get install -y npm

# ASSIGN PERMISSIONS TO THE CURRENT USER.
sudo chown -R $USER '/usr/lib/node_modules'
sudo chown -R $USER '/usr/local/lib/node_modules'

# CONFIGURE NPM FOR THE SESSION USER: ~/.npmrc
npm config set editor nano
npm config set strict-ssl false
npm config set noproxy nexus.prod.uci.cu
npm config set proxy http://localhost:3128
npm config set https-proxy http://localhost:3128
npm config set registry http://nexus.prod.uci.cu/repository/npm-all

# CONFIGURE NPM FOR SUDO USER: /root/.npmrc
sudo npm config set editor nano
sudo npm config set strict-ssl false
sudo npm config set noproxy nexus.prod.uci.cu
sudo npm config set proxy http://localhost:3128
sudo npm config set https-proxy http://localhost:3128
sudo npm config set registry http://nexus.prod.uci.cu/repository/npm-all

# npm config set proxy http://<username>:<password>@<the.proxy.hostname>:<port>
# npm config set https-proxy http://<username>:<password>@<the.proxy.hostname>:<port>
# npm config set no-proxy localhost,127.0.0.1,example.org

# UPDATE NPM TO THE LATEST VERSION.
sudo npm install --global npm@latest

sudo npm install --global @angular/cli
sudo npm install --global @nestjs/cli
sudo npm install --global react
sudo npm install --global vue

sudo npm install --global bootstrap
sudo npm install --global jquery

sudo npm install --global coffeescript
sudo npm install --global typescript
sudo npm install --global underscore

sudo npm install --global prettier
sudo npm install --global eslint

sudo npm install --global console
sudo npm install --global lodash
sudo npm install --global rxjs

sudo npx cross-env ELECTRON_GET_USE_PROXY=true npm install --global electron --unsafe-perm=true

# npm cache clean --force

exit 0

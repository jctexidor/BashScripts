#!/bin/bash

### Instalar npm del repositorio Linux. ###
sudo apt-get install -y npm;

### Asignar permisos al usurario actual. ###
chown -R $USER '/usr/lib/node_modules'
chown -R $USER '/usr/local/lib/node_modules'

### Configurar npm para el usuario de sesión: ~/.npmrc ###
npm config set editor nano
npm config set registry http://nexus.prod.uci.cu/repository/npm-all
npm config set noproxy nexus.prod.uci.cu
npm config set strict-ssl false

### Configurar npm para usuario sudo: /root/.npmrc ###
sudo npm config set editor nano
sudo npm config set registry http://nexus.prod.uci.cu/repository/npm-all
sudo npm config set noproxy nexus.prod.uci.cu
sudo npm config set strict-ssl false

### Actualizar npm a la última versión. ###
sudo npm install -g npm@latest

npm install @angular/cli
npm install electron
npm install vue react jquery bootstrap
npm install --save-dev eslint prettier typescript underscore coffeescript
npm install --save-dev console webpack less
npm install @nestjs/cli


### Limpiar la cache. ###
# npm cache clean --force
exit 0;

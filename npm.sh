#!/bin/bash

sudo apt-get install npm;
npm config set editor nano
npm config set registry http://nexus.prod.uci.cu/repository/npm-all
npm config set noproxy nexus.prod.uci.cu
npm config set strict-ssl false
sudo npm install -g eslint less webpack typescript react vue electron @angular/cli ;

exit 0;

#!/bin/sh

wget -qO - https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo apt-add-repository 'deb https://packages.microsoft.com/repos/vscode stable main'
sudo apt update;
sudo apt install code;
code --install-extension vscode-python.python

exit 0;

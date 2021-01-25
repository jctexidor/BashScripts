#!/bin/sh


sudo snap set system proxy.http="http://127.0.0.1:3128"
sudo snap set system proxy.https="http://127.0.0.1:3128"

# sudo snap refresh
sudo snap install code --classic
sudo snap install atom --classic
sudo snap install chromium
sudo snap install sublime-text --classic


exit 0;

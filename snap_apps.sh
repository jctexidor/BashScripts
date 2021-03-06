#!/bin/sh

sudo snap set system proxy.http="http://127.0.0.1:3128"
sudo snap set system proxy.https="http://127.0.0.1:3128"

sudo snap refresh                # Update the snap apps.
sudo snap install code --classic # Visual Studio Code
sudo snap install chromium
sudo snap install beekeeper-studio
sudo snap install atom --classic
sudo snap install sublime-text --classic
sudo snap install telegram-desktop

exit 0

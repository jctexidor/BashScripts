#!/bin/bash

find . -type f -iname '*.mp4' -exec ffmpeg -i {} {}.mp3 \;
find . -type f -iname '*.mp4' -exec ffmpeg -i {} -target pal-vcd {}.mpg \;
gsettings set org.gnome.system.proxy mode 'manual' 
gsettings set org.gnome.system.proxy.http host '127.0.0.1'
gsettings set org.gnome.system.proxy.http port 3128
exit 0;

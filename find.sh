find . -type f -iname '*.mp4' -exec ffmpeg -i {} {}.mp3 \;
find . -type f -iname '*.mp4' -exec ffmpeg -i {} -target pal-vcd {}.mpg \;

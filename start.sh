#!/bin/sh
sudo apt-get install build-essential
sudo apt-get install libgtk2.0-dev
gcc -shared -o libsublime-imfix.so sublime-imfix.c `pkg-config --libs --cflags gtk+-2.0` -fPIC
LD_PRELOAD=./libsublime-imfix.so subl
sudo cp -y sublime_text.desktop /usr/share/applications/sublime_text.desktop
sudo cp -y libsublime-imfix.so /opt/sublime_text/
sudo cp -y subl  /usr/bin/subl
cd ../
rm -rf fix_sublime_zh

#! /bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install alsa-base libicu-dev libasound2-dev libsamplerate0-dev libsndfile1-dev libreadline-dev libxt-dev libudev-dev libavahi-client-dev libfftw3-dev cmake git gcc-4.8 g++-4.8
if [ ! -d "jack2" ]; then
    git clone git://github.com/jackaudio/jack2 --depth 1
fi
cd jack2
./waf configure --alsa
./waf build
sudo ./waf install
sudo ldconfig
cd ..
rm -rf jack2

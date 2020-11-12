#!/usr/bin/bash

echo -e "starting the installation of dependencies"

sudo apt-get install python-setuptools python-dev build-essential pip libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg
sudo pip install pyaudio SpeechRecognition gTTS

cd $(pwd) && sudo dpkg -i libav-tools_2.8.6-1ubuntu2_all.deb

sleep 2s 

echo -e "succesfully installed"

sleep 2s 

echo -e "starting the program"

sleep 2s

echo -e "say assistant"
sleep 2s

cd $(pwd) && gnome-terminal -- python3 main.py

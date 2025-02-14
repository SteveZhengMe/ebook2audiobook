#! /bin/bash

sudo apt-get update
sudo apt-get -y install libegl1
sudo apt-get -y install libopengl0
sudo apt-get -y install libxcb-cursor0
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

sudo apt-get install -y ffmpeg
apt-get install -y mecab libmecab-dev mecab-ipadic-utf8


if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi


if [ -z "$VIRTUAL_ENV" ]; then
    source .venv/bin/activate
fi

pip install mecab-python3
pip install -r requirements.txt
#!/bin/bash
apt-get install python-software-properties -y && \
apt-get install software-properties-common -y && \
sudo add-apt-repository ppa:jonathonf/python-3.6 && \
sudo apt-get update && \
sudo apt-get install python3.6 -y && \
wget https://bootstrap.pypa.io/get-pip.py && \
python3.6 get-pip.py

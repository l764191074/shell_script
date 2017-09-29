#!/bin/bash
apt-get install python-software-properties -y && \
apt-get install software-properties-common -y && \
apt-get install wget -y && \
add-apt-repository ppa:jonathonf/python-3.6 && \
apt-get update && \
apt-get install python3.6 -y && \
wget https://bootstrap.pypa.io/get-pip.py && \
python3.6 get-pip.py

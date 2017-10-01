#! /use/bin/bash
apt-get update && \
sudo apt-get install openssh-server && \
/etc/init.d/ssh start

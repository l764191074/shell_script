#! /use/bin/bash
apt-get update && \
apt-get install redis-server -y  && \
/etc/init.d/redis-server status

cd /root/
apt-get install libxss1 libappindicator1 libindicator7 wget xvfb unzip  -y &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
dpkg -i google-chrome*.deb
apt-get install -f -y

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome*.deb
sudo apt-get install -f

apt-get install xvfb

sudo apt-get install unzip

wget -N http://chromedriver.storage.googleapis.com/2.33/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver

sudo mv -f chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

sudo apt-get install python3-pip

## (Optional) Create and enter a virtual environment:
# sudo apt-get install python-virtualenv
# virtualenv env
# source env/bin/activate

# Install Selenium and pyvirtualdisplay:
pip36 install pyvirtualdisplay selenium
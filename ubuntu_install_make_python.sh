# sudo sed -i 's\archive.ubuntu.com\mirrors.aliyun.com\g' /etc/apt/sources.list
sudo apt-get update
cd /home/
sudo apt-get install gcc  make zlib1g-dev -y
sudo apt-get install  libbz2-dev libsqlite3-dev  libxml2-dev  libffi-dev libssl-dev -y
sudo apt install wget -y
wget http://mirrors.sohu.com/python/3.6.2/Python-3.6.2.tgz
tar -xvf Python-3.6.2.tgz
cd Python-3.6.2
./configure --prefix=$HOME/usr/python36/
make
make install
cd $HOME/usr/python36/bin/
mkdir -p ~/.pip/
cat << EOF > ~/.pip/pip.conf
[global]
trusted-host=mirrors.163.com
index-url=http://mirrors.163.com/pypi/simple/
EOF

sudo apt-get install libmysqlclient-dev -y
sudo ln -s $HOME/usr/python36/bin/pip3 /usr/local/sbin/pip36
sudo ln -s $HOME/usr/python36/bin/python3 /usr/local/sbin/python36

./pip3 install mysqlclient
./pip3 install Django
./pip3 install gunicorn

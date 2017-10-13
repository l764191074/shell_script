sed -i 's\archive.ubuntu.com\mirrors.aliyun.com\g' /etc/apt/sources.list
apt-get update
cd /home/
apt-get install gcc  make zlib1g-dev -y
apt-get install  libbz2-dev libsqlite3-dev  libxml2-dev  libffi-dev libssl-dev -y
apt install wget -y
wget http://mirrors.sohu.com/python/3.6.2/Python-3.6.2.tgz
tar -xvf Python-3.6.2.tgz 
cd Python-3.6.2
./configure --prefix=/home/usr/python36/
make
make install
cd ../usr/python36/bin/
mkdir -p ~/.pip/
cat << EOF > ~/.pip/pip.conf
[global]
trusted-host=mirrors.aliyun.com
index-url=http://mirrors.aliyun.com/pypi/simple/
EOF

apt-get install libmysqlclient-dev -y
./pip3 install mysqlclient
./pip3 install Django
./pip3 install gunicorn

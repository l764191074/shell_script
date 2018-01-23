sed -i 's\archive.ubuntu.com\mirrors.aliyun.com\g' /etc/apt/sources.list &&
apt-get update &&
cd /root/
apt-get install gcc  make zlib1g-dev libbz2-dev libsqlite3-dev  libxml2-dev  libffi-dev libssl-dev wget -y
wget http://mirrors.sohu.com/python/3.6.2/Python-3.6.2.tgz
tar -xvf Python-3.6.2.tgz 
cd Python-3.6.2
./configure --prefix=/root/usr/python36/
make
make install
cd /root/usr/python36/bin/
mkdir -p ~/.pip/
cat << EOF > ~/.pip/pip.conf
[global]
trusted-host=mirrors.aliyun.com
index-url=http://mirrors.aliyun.com/pypi/simple/
EOF
apt-get install libmysqlclient-dev -y
ln -s /root/usr/python36/bin/pip3 /usr/local/bin/pip36
ln -s /root/usr/python36/bin/python3 /usr/local/bin/python36

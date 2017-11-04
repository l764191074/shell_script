wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.12/linux-headers-4.12.0-041200_4.12.0-041200.201707022031_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.12/linux-headers-4.12.0-041200-generic_4.12.0-041200.201707022031_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.12/linux-image-4.12.0-041200-generic_4.12.0-041200.201707022031_amd64.deb
dpkg -i *.deb
update-grub
reboot
uname -r
echo ¡°net.core.default_qdisc = fq¡± >> /etc/sysctl.conf
echo ¡°net.ipv4.tcp_congestion_control = bbr¡± >> /etc/sysctl.conf
sysctl -p
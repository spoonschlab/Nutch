sudo yum -y install epel-release
sudo yum -y install nss-mdns
sudo yum -y install wget

#nginx
sudo yum -y install nginx
sudo systemctl start nginx
sudo systemctl enable nginx

#ntp
sudo yum -y install ntp
sudo timedatectl set-timezone America/New_York
sudo systemctl start ntpd
sudo systemctl status ntpd
sudo systemctl enable ntpd


#java
echo "Downloading Oracle Java ..."
wget --no-verbose --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm"
sudo yum -y localinstall jdk-8u181-linux-x64.rpm
rm -rf jdk-8u181-linux-x64.rpm


#oracle 
sudo groupadd -g 501 oinstall
sudo groupadd -g 502 dba
sudo groupadd -g 503 oper
sudo useradd -u 500 -g oinstall -G dba,oper oracle
sudo usermod -g oinstall -G dba,oper oracle
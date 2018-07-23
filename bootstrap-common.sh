sudo yum -y install epel-release
sudo yum -y avahai-daemon
sudo yum -y libnss-mdns
sudo yum -y install wget
echo "Downloading Oracle Java ..."
wget --no-verbose --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.rpm"
sudo yum -y localinstall jdk-8u181-linux-x64.rpm
rm -rf jdk-8u181-linux-x64.rpm
#sudo sh -c "echo export JAVA_HOME=/usr/java/jdk1.8.0_161/jre >> /etc/environment"
sudo groupadd -g 501 oinstall
sudo groupadd -g 502 dba
sudo groupadd -g 503 oper
sudo useradd -u 500 -g oinstall -G dba,oper oracle
sudo usermod -g oinstall -G dba,oper oracle
sudo useradd nobody
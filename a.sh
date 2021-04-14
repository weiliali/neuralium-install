#!/bin/bash
echo "   1.ubuntu16.4      2.ubuntu20.4
  3.centos8         4.install node and cli
   5.start neuralium   6.killall screen
   7.cli   8.screen -r  9.reboot   10.version
     type in your choose:"
read num
if [[ "$num" -eq 1 ]];
then
apt update -y
apt install firewalld -y
apt install psmisc -y
systemctl start firewalld
apt install screen -y
apt install vim -y
wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0

sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-5.0

sudo apt-get install -y dotnet-runtime-5.0

sudo firewall-cmd --add-port=33888/tcp
sudo firewall-cmd --permanent --add-port=33888/tcp

sudo firewall-cmd --add-port=32888/tcp
sudo firewall-cmd --permanent --add-port=32888/tcp

sudo firewall-cmd --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=80/tcp;

elif [[ "$num" -eq 2 ]];
then
apt update -y
apt install firewalld -y
apt install screen -y
apt install psmisc -y
apt install vim -y
systemctl start firewalld
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb


sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-5.0


sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-5.0


sudo apt-get install -y dotnet-runtime-5.0
sudo firewall-cmd --add-port=33888/tcp
sudo firewall-cmd --permanent --add-port=33888/tcp

sudo firewall-cmd --add-port=32888/tcp
sudo firewall-cmd --permanent --add-port=32888/tcp

sudo firewall-cmd --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=80/tcp;

elif [[ "$num" -eq 3 ]];
then
yum update -y
yum install psmisc -y
yum install firewalld -y
systemctl start firewalld
yum install screen -y
yum install vim -y

sudo dnf install dotnet-sdk-5.0 -y
sudo dnf install aspnetcore-runtime-5.0 -y
sudo dnf install dotnet-runtime-5.0 -y

yum install firewalld -y
systemctl start firewalld
sudo firewall-cmd --add-port=33888/tcp
sudo firewall-cmd --permanent --add-port=33888/tcp

sudo firewall-cmd --add-port=32888/tcp
sudo firewall-cmd --permanent --add-port=32888/tcp

sudo firewall-cmd --add-port=80/tcp
sudo firewall-cmd --permanent --add-port=80/tcp;

elif [[ "$num" -eq 4 ]];
then 
cd ~
echo Type in new node version \(eg. 1.0.1.29\)
read version
cd ~
wget https://neuralium.com/sites/default/files/wallet/linux/latest/neuralium.node-linux-x64-MAINNET-$version.tar.gz
mkdir -p $HOME/neuralium-node && tar zxf neuralium.node-linux-x64-MAINNET-$version.tar.gz -C $HOME/neuralium-node
mv $HOME/neuralium-node/linux-x64 $HOME/neuralium-node/v$version
wget https://neuralium.com/sites/default/files/wallet/linux/latest/neuralium.cli-linux-x64-MAINNET-$version.tar.gz
mkdir -p $HOME/neuralium-cli && tar zxf neuralium.cli-linux-x64-MAINNET-$version.tar.gz -C $HOME/neuralium-cli
mv $HOME/neuralium-cli/linux-x64 $HOME/neuralium-cli/v$version


elif [[ "$num" -eq 5 ]];
then 
screen -S neuralium $HOME/neuralium-node/v1.0.1.29/Neuralium;

elif [[ "$num" -eq 6 ]];
then
killall screen;

elif [[ "$num" -eq 7 ]];
then 
$HOME/neuralium-cli/v1.0.1.29/neuraliumcli;

elif [[ "$num" -eq 8 ]];
then
screen -r;

elif [[ "$num" -eq 9 ]];
then 
reboot;

elif [[ "$num" -eq 10 ]];
then 
lsb_release -a;
fi

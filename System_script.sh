#!/bin/bash
clear
#To check overall  System Information
echo -e "\e[4mSystem Information \e[0m"
sleep 1
#To check is internet is connected or not
ping -c 1 -w 5 192.168.132.230 &> /dev/null && int="Connected"||int="Disconnected"
echo -e "\e[31mInternet :\e[0m" "\e[32m$int\e[0m"
sleep 1
#To check the Operating System Type
os=$(uname -o)
echo -e "\e[31mOperating System Type :\e[0m" "\e[32m$os\e[0m"
sleep 1
#To check the Server Type
typp=`dmidecode -s system-manufacturer`
echo -e "\e[31mServer Type :\e[0m" "\e[32m$typp\e[0m"
sleep 1
#Which Operating System 
OS=$(uname -s)
if [ "${OS}" = "Linux" ]; then
	if [ -f /etc/redhat-release ]; then
	DIST="Red Hat"
elif [ -f /etc/debian_version ]; then
	DIST="Debian-kali"
elif [ -f /etc/ubuntu-release ]; then
	DIST="Ubuntu"
elif [ -f /etc/suSE-release ]; then
	DIST="suSE"
	fi
fi
echo -e "\e[31mDistribution :\e[0m" "\e[32m$DIST\e[0m"
sleep 1
#Architecture check
Architecture=$(uname -m)
echo -e "\e[31mArchitecture :\e[0m" "\e[32m$Architecture\e[0m"
sleep 1
#Check the Information of Linux
info=$(uname -a)
echo -e "\e[31mAll Info :\e[0m" "\e[32m$info\e[0m"
sleep 1
#kernel release
kernel=$(uname -r)
echo -e "\e[31mKernel Release :\e[0m" "\e[32m$kernel\e[0m"
sleep 1
#Check DNS
nameservers=$(cat /etc/resolv.conf | sed '1 d' | awk '{print $1,$2}')
echo -e "\e[31mDNS server :\e[0m" 
echo -e "\e[32m$nameservers\e[0m"
sleep 1
#Logged in users
userslogged=$(who)
userlogged=$(whoami)
echo -e "\e[31mLogged In Users :\e[0m" "\e[32m$userslogged\e[0m"
echo -e "\e[31mUser name :\e[0m" "\e[32m$userlogged\e[0m"
sleep 1
#Disk free
Diskfree=$(free -m)
echo -e "\e[31mDisk Free :\e[0m" "\e[32m$Diskfree\e[0m"
sleep 1
#Disk usage
Disks=$(lsblk)
echo -e "\e[31mDisk usage :\e[0m" "\e[32m$Disks\e[0m"
sleep 1
host=`hostname`
echo -e "\e[31mHostname :\e[0m" "\e[32m$host\e[0m"
sleep 1
#check the user details in detail
username=`uname -m`
echo -e "\e[31mUsername :\e[0m" "\e[32m$username\e[0m"
sleep 1
HostDetails=`hostnamectl`
echo -e "\e[31mHostname :\e[0m" "\e[32m$HostDetails\e[0m"



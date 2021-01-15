#! /bin/bash
printf "Installing RDP Be Patience... " >&2
{
sudo useradd -m TESTUSER
sudo adduser TESTUSER sudo
echo 'TESTUSER:0147852' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
sudo apt-get install squid
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2

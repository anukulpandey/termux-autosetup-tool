#!/bin/bash
banner="""
  _________  ______
 /_  __/   |/_  __/
  / / / /| | / /   
 / / / ___ |/ /    
/_/ /_/  |_/_/     
                   v 1.0.0
                   @github.com/anukulpandey
                   TERMUX AUTO-SETUP TOOL
"""
echo ${banner}

apt update -y && apt upgrade -y 
apt install git -y
apt install wget -y 
apt install python -y 
apt install python3 -y
apt install nano -y
git clone https://github.com/anukulpandey/pybuster
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm64.tgz
unzip ngrok-stable-linux-arm64.tgz
echo ""
echo ""
RED='\033[0;31m'
echo -e "${RED}[+] Enter ngrok token you got from  https://dashboard.ngrok.com/get-started/setup[+]"
unzip ngrok-stable-linux-arm64.tgz
read token
./ngrok authtoken ${token}

echo "Installed Successfully"
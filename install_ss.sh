#!/bin/bash
PASSWORD=cancan.fan
SERVER_PORT=20863
METHOD=aes-256-cfb
TIMEOUT=300
FILENAME=../ss_config.json


export LC_ALL=C
apt-get update
apt-get install build-essential git python-pip

git clone https://github.com/shadowsocks/shadowsocks.git
cd shadowsocks && git checkout master
pip install setuptools && pip install . && cd ..

echo "{" > $FILENAME
echo "\"server\":\"::\"," >> $FILENAME
echo "\"server_port\":$SERVER_PORT," >> $FILENAME
echo "\"method\":\"$METHOD\"," >> $FILENAME
echo "\"password\":\"$PASSWORD\"," >> $FILENAME
echo "\"timeout\":$TIMEOUT" >> $FILENAME
echo "}" >> $FILENAME
cat $FILENAME


# BBR
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh && ./bbr.sh


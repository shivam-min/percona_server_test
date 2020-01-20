#!/bin/bash

#set the mysql root password
MYSQL_ROOT_PASSWORD=root

#Setup the official percona apt-repository
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo apt-get update

echo "percona-server-server-5.7 percona-server-server-5.7/root-pass password $MYSQL_ROOT_PASSWORD" | debconf-set-selections
echo "percona-server-server-5.7 percona-server-server-5.7/re-root-pass password $MYSQL_ROOT_PASSWORD" | debconf-set-selections

#install the percona server package and set ip up
sudo apt-get install -y  percona-server-server-5.7

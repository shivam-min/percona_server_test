#Setup the officaila percona apt-repository

sudo wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
sudo dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
sudo apt-get update

#  
export DEBIAN_FRONTEND=noninteractive

sudo echo "percona-server-server-5.7 percona-server-server-5.7/root-pass password root" | debconf-set-selections
sudo echo "percona-server-server-5.7 percona-server-server-5.7/re-root-pass password root" | debconf-set-selections

sudo apt install -y percona-server-server-5.7

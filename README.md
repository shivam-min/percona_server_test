## percona_server_test
Percona server for MySQL 5.7 automated deployment using vagrant ubuntu box and shell provisioning


## Requirements

A Ubuntu 16 x86_64 box to use with Vagrant.
VirtualBox - https://www.virtualbox.org/
a working Vagrant environment - http://vagrantup.com/
an Internet connection for the VM's


## Instructions to use
Once you have your requirements ready, it's very easy to deploy your boxes:

$ git clone https://github.com/lefred/percona-cluster.git
$ cd percona-cluster
$ vagrant up
This will deploy the 3 machines: percona1, percona2 and percona3.

And this is all !

## How to setup the environment
These are the step to run to be able to setup everything you need.

# VirtualBox

On RedHat/CentOS/Fedora  
yum install virtualbox
 
On Ubuntu/Debian
apt-get install virtualbox

# vagrant

apt-get install vagrant
Import the base box

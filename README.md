## Introduction
This setup can be used to deploy Percona server for MySQL 5.7 on ubuntu 16 x64 Vagrant box.
We will use virtualbox as provider for vagrant
 


## Requirements

A Ubuntu 16 x86_64 box to use with Vagrant.
VirtualBox - https://www.virtualbox.org/

A working Vagrant environment - http://vagrantup.com/

An Internet connection for the VM's


## Instructions to use
Once you have your requirements ready, we can deploy using below steps :
1. Setup the Vagrant workspace

**mkdir db_server**  

**cd db_server**

**vagrant init**  (This will create the vagrant file)

2. Replace the contents of the vagrantfile generated with **config** available in this repository and bring up the box

**cat config > Vagrantfile**

**vagrant up** 

3.Once the box is up, we can perform unattended install of Percona server for MySql

Copy the install_percona_mysql.sh bash script from this repo.

Execute the script :  **sudo sh install_percona_mysql.sh**  (This will deploy and bring up the percona server with password set as *"root"*)

Note : To use a different password , modify the variables at the begining of the install.sh script 

## How to setup the environment
These are the step to run to be able to setup everything you need.

### VirtualBox

*On RedHat/CentOS/Fedora* 
**yum install virtualbox**
 
*On Ubuntu/Debian*
**apt-get install virtualbox**

### Vagrant

**apt-get install vagrant**


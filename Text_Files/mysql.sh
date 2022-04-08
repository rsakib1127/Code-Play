#!/bin/bash
# Author: Sakib Rahman



#########################################
########### Variable Configs ############
#########################################

echo "**** Configuring MySQL Database Server ****"

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: User Name"
  exit $E_BADARGS
fi


SERVER_V=5.7
SERVER_PACKAGE=mysql-server-$SERVER_V
User="$1"
DistroVersion="`lsb_release -r -s`"

#echo "Enter MySQL Password"
#read password




#########################################
############## Functions ################
#########################################















#########################################
############ MYSQL Config ###############
#########################################

# Install MySQL without password prompt
# Set username and password to 'root'
echo "**** Installing MySQL Version $SERVER_V ****"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password zaq13edc"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password zaq13edc"
# Install MySQL Server
sudo apt-get -y install -qq $SERVER_PACKAGE
#Configure for outside access
sed -i "s/bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
MYSQL=`which mysql`
Q1="GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'zaq13edc' WITH GRANT OPTION;"
Q2="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}"
$MYSQL -u root -pzaq13edc -e "$SQL"
echo "**** Restarting MySQL ****"
service mysql restart



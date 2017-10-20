#!/bin/bash

##########################################################
### Author: Puneetha Bagivalu Manjegowda
### Script to launch beeline shell with connection string and custom parameters
##########################################################


##########################################################
#### Parameters ####
HIVE_CONNECTION_STRING="jdbc:hive2://quickstart.cloudera:10000/default;"
# If we have a secure connection then we can set 'ssl=true'. Ex: HIVE_CONNECTION_STRING="jdbc:hive2://quickstart.cloudera:10000/default;ssl=true"
DEFAULT_CONFIGURATION_FILE="/home/cloudera/beeline_scripts/default_beeline_config.hql"
##########################################################

echo -n "Enter Username : "
read username
#echo "Username is :${username}"

echo -n "Enter the password : "
read -s password
#echo "Password is: ${password}"

echo ${password} > /tmp/${username}_beeline.dat

#Beeline only support plain text password in command line (or) as part of textfile.
#Hence, we temporarily stored the password and remove it after 3 seconds. 
#Once you are logged in to Hive, you need that password file.
nohup bash /home/cloudera/beeline_scripts/remove_pass.sh ${username} &>/dev/null &

beeline -u ${HIVE_CONNECTION_STRING} -n ${username} -w /tmp/${username}_beeline.dat --hivevar env_curr_pid=`echo $$` -i ${DEFAULT_CONFIGURATION_FILE}
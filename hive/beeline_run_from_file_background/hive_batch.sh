#!/bin/bash

##########################################################
### Author: Puneetha Bagivalu Manjegowda
### Script to launch beeline shell with connection string and custom parameters
##########################################################


##########################################################
#### Arguments
### Name of the script to run

# if $1 is empty, exit
if [ -z "$1" ]; then
  echo "Error. No file name provided".
  echo "Usage: $(basename $0) <file name>"
  exit 1
fi

FILE_SCRIPT="$1";

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

nohup bash /home/cloudera/beeline_scripts/remove_pass.sh ${username} &>/dev/null &

## Remove the output file previously created
rm -f ${FILE_SCRIPT}.out

#### beeline command in background ######
export HADOOP_CLIENT_OPTS="-Djline.terminal=jline.UnsupportedTerminal" && \
nohup beeline -u ${HIVE_CONNECTION_STRING}  -n ${username} -w /tmp/${username}_beeline.dat \
--hivevar username=${username} \
--hivevar env_curr_pid=`echo $$` -i ${DEFAULT_CONFIGURATION_FILE} \
-f "${FILE_SCRIPT}"  &> ${FILE_SCRIPT}.`date +%Y-%m-%d--%H:%M:%S`.out &


#!/bin/bash

##########################################################
### Author: Puneetha Bagivalu Manjegowda
### Script to launch impala shell with connection string
##########################################################

##########################################################
#### Parameters
IMPALA_CONNECTION_STRING="quickstart.cloudera:21000"
##########################################################

echo -n "Enter LDAP Username : "
read username
#echo "Username is :${username}"

impala-shell -i ${IMPALA_CONNECTION_STRING} --ssl --live_summary -V -l -u ${username}
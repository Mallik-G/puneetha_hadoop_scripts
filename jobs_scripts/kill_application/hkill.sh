#!/bin/bash

##########################################################
### Author: Puneetha Bagivalu Manjegowda
### Script to kill yarn job
##########################################################

##########################################################
APPLICATION_ID=$1
##########################################################

##########################################################
# Usage <hkill applicationId>
##########################################################

if [ $# -eq 1 ]; then
    yarn application -kill ${APPLICATION_ID}
else
    echo "you must specify 1 argument <hkill <applicationId>>"
fi
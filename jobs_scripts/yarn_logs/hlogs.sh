#!/bin/bash

##########################################################
### Author: Puneetha Bagivalu Manjegowda
### Script to track yarn jobs
##########################################################

##########################################################
APPLICATION_ID=$1
CONTAINER_ID=$2
NODE_ADDRESS=$3
##########################################################

##########################################################
# Usage: <hlogs applicationId> (OR) <hlogs applicationId containerId nodeAddress>
##########################################################


if [ $# -eq 1 ]; then
    if $(echo $1 | grep -q application); then
        yarn logs -applicationId ${APPLICATION_ID}
    else
        yarn logs -applicationId application_${APPLICATION_ID}
    fi
elif [ $# -eq 3 ]; then
    yarn logs -applicationId ${APPLICATION_ID} -containerId ${CONTAINER_ID} -nodeAddress ${NODE_ADDRESS}
else
    echo "you must specify 1 or 3 arguments <hlogs applicationId containerId nodeAddress>"
fi

#!/bin/bash

##########################################################
### Author: Puneetha Bagivalu Manjegowda
### Script to launch impala shell with connection string
##########################################################

##########################################################
# Usage:
# $ impala_export --username cloudera --input <input_impala_script.sql>  --output <output_location.out> --delimeter <output_delimeter>

##########################################################
#### Parameters
IMPALA_CONNECTION_STRING="quickstart.cloudera:21000"
##########################################################

delimeter="|"
if  [[ "$#" > 1 ]]; then
    while [[ "$#" > 1 ]]; do case $1 in
        --username) username="$2";;
        --input) input="$2";;
        --output) output="$2";;
        --delimeter) delimeter="$2";;
        *) break;;
      esac; shift; shift
    done
else
    echo "Usage: impala_export --username <username> --input <input_impala_script.sql>  --output <output_location.out> --delimeter <output_delimeter>";
fi

impala-shell -i ${IMPALA_CONNECTION_STRING} --ssl -f ${input} -o ${output} --print_header '--output_delimiter=${delimeter}'  -u ${username}
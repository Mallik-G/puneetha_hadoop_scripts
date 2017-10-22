# What is it?
Script to track yarn job

# How to run
### Below scripts are kept in location in this example(You can change it wherever you want to keep):
    /home/cloudera/jobs_scripts/

### Run as below 
```sh
$ bash hlogs.sh <applicationId>

(or) you can create alias of this by adding below line in the file
$ vim ~/.bashrc
# All other commands 
# Append below line for alias 
alias hlogs="bash /home/cloudera/jobs_scripts/hlogs.sh"

$ source ~/.bashrc

# To use
$ hlogs <applicationId>
(or)
$ hlogs <applicationId> <containerId> <nodeAddress>

```
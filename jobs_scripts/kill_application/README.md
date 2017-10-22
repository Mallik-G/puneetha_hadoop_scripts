# What is it?
Script to create alias to kill yarn job

# How to run
### Below scripts are kept in location in this example(You can change it wherever you want to keep):
    /home/cloudera/jobs_scripts/

### Run as below 
```sh
$ bash hkill.sh <applicationId>

(or) you can create alias of this by adding below line in the file
$ vim ~/.bashrc
# All other commands 
# Append below line for alias 
alias hkill="bash /home/cloudera/jobs_scripts/hkill.sh"

$ source ~/.bashrc

# To use
$ hkill <applicationId>
```
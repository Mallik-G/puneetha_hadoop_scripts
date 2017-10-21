# What is it?
Script to launch impala shell with connection string


# How to run
### All 3 below scripts are kept in location in this example(You can change it wherever you want to keep):
    /home/cloudera/impala_scripts/
### Run as below 
```sh
$ bash impala_shell.sh

(or) you can create alias of this by adding below line in the file
$ vim ~/.bashrc
# All other commands 
# Append below line for alias 
alias impala="bash /home/cloudera/impala_scripts/impala_shell.sh"

$ source ~/.bashrc

# To login
$ impala
```

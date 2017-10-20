# What is it?
Script to launch beeline shell with connection string and custom parameters

Beeline only support plain text password in command line (or) as part of textfile.
Hence, we temporarily stored the password and remove it after 3 seconds. 
Once you are logged in to Hive, you need that password file.

# How to run
### All 3 below scripts are kept in location in this example(You can change it wherever you want to keep):
    /home/cloudera/beeline_scripts/
### Run as below 
```sh
$ bash beeline_shell.sh

(or) you can create alias of this by adding below line in the file
$ vim ~/.bashrc
# All other commands 
# Append below line for alias 
alias beeline_shell="bash /home/cloudera/beeline_scripts/beeline_shell.sh"

$ source ~/.bashrc

# To login
$ beeline_shell

```

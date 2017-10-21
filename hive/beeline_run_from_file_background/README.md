# What is it?
Script to launch beeline shell, Run hive script in background, also track the output.

Beeline only support plain text password in command line (or) as part of textfile.
Hence, we temporarily stored the password and remove it after 3 seconds. 
Once you are logged in to Hive, you need that password file.

# How to run
### Below scripts are kept in location in this example(You can change it wherever you want to keep):
    /home/cloudera/beeline_scripts/
### Run as below 
```sh
$ bash hive_batch.sh <input_scrip.sql>

(or) you can create alias of this by adding below line in the file
$ vim ~/.bashrc
# All other commands 
# Append below line for alias 
alias hive_batch="bash /home/cloudera/beeline_scripts/hive_batch.sh"

$ source ~/.bashrc

# To login
$ hive_batch <input_scrip.sql>
```

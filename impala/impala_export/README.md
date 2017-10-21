# What is it?
Script to launch impala shell, pass sql script and save the output into a file


# How to run
### Below scripts are kept in location in this example(You can change it wherever you want to keep):
    /home/cloudera/impala_scripts/
### Run as below 
```sh
$ bash impala_export.sh --username <username> --input <input_impala_script.sql>  --output <output_location.out> --delimeter <output_delimeter>

(or) you can create alias of this by adding below line in the file
$ vim ~/.bashrc
# All other commands 
# Append below line for alias 
alias impala_export="bash /home/cloudera/impala_scripts/impala_export.sh"

$ source ~/.bashrc

# To use
$ impala_export --username <username> --input <input_impala_script.sql>  --output <output_location.out> --delimeter <output_delimeter>
```

#!/bin/bash

VAR=$(cat /etc/mysql/conf.d/custom.cnf | grep table_definition_cache)
echo "=============================================="
echo "Script ran on $(date)" >> /var/log/script.log

if [[ -z $VAR ]]; then
    echo "Adding the parameter inside custom.cnf" >> /var/log/script.log
    echo 'table_definition_cache=8084' >> /etc/mysql/conf.d/custom.cnf

    systemctl restart mysql >> /dev/null 2<&1

    if [ "$?" == 0 ]; then
        echo "MySQL restarted successfully" >> /var/log/script.log
    else
        echo "Unexpected error occured while restarting mysql" >> /var/log/script.log
        exit
    fi
else
    echo "Parameter already there" >> /var/log/script.log
fi
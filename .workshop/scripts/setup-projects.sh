#!/bin/bash

if [[ $# -eq 0 ]]
  then
    echo "No arguments supplied. Please pass the number of users as an argument."
    echo "Example usage: setup-projects.sh [number of users]"
    exit 1
fi

i=0
while [ $i -ne $1 ]
do
        ((i+=1))
        echo "user$i"

        oc adm policy add-cluster-role-to-user cluster-admin user$i

done

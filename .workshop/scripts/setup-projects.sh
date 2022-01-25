#!/bin/bash

# If there are 50 users

i=0
while [ $i -ne 50 ]
do
        i=$(($i+1))
        echo "user$i"
        
        oc adm policy add-cluster-role-to-user cluster-admin user$i 

done

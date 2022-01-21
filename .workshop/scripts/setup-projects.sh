#!/bin/bash

# If there are 25 users

i=0
while [ $i -ne 25 ]
do
        i=$(($i+1))
        echo "user$i"
        
	oc new-project rehost-jboss-user$i
        oc adm policy add-cluster-role-to-user cluster-admin user$i 

	oc new-project websphere-pipeline-user$i


	oc new-project sample-domain-user$i
	oc label ns sample-domain-user$i weblogic-operator=enabled

	oc new-project rehost-websphere-user$i

done

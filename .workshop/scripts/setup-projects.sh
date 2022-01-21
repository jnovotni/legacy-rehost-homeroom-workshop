#!/bin/bash

# If there are 25 users

i=0
while [ $i -ne 25 ]
do
        i=$(($i+1))
        echo "user$i"
        
	oc new-project rehost-jboss-user$i
        oc adm policy add-cluster-role-to-user admin user$i -n rehost-jboss-user$i

	oc new-project websphere-pipeline-user$i
        oc adm policy add-cluster-role-to-user admin user$i -n websphere-pipeline-user$i	


	oc new-project weblogic-operator-user$i
	oc adm policy add-cluster-role-to-user admin user$i -n weblogic-operator-user$i

	oc new-project rehost-websphere-user$i
        oc adm policy add-cluster-role-to-user admin user$i -n rehost-websphere-user$i

done

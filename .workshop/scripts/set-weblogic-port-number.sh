#!/bin/bash

# This script sets a unique port number for the user's WebLogic domain based on their username
# Make sure that you execute this script using "source" so that the environment variables are set properly
# Example: source ./set-weblogic-port-number.sh

# Get the user's number. If they're opentlc-mgr, assign them the value 0
if [ "$JUPYTERHUB_USER" = "opentlc-mgr" ]
  then
          USER_NUM=0
  else
          USER_NUM=$(echo $JUPYTERHUB_USER | tr -dc '0-9')
fi

# Add the user's number to the default port value to get the user's unique port number
WEBLOGIC_DOMAIN_PORT=$(($USER_NUM + 30701))
echo "user's port is $WEBLOGIC_DOMAIN_PORT"

#!/bin/bash

# Display the UID and username of the user executing the script
# Display if the user is te root user or not

# Display the UID 
echo "Your UID is ${UID}"
# Display the username
# USER_NAME=$(id -un)     #This is a new style syntax
USER_NAME=`id -un`    #This is an older style syntax. The output would be the same for both old and new syntax

echo "Your username is ${USER_NAME}"

# Display if the user is root user or not
if [[ "${UID}" -eq 0 ]]         # checkout the space after if and " ", otherwise the code throws an error
then
    echo 'You are root'
else
    echo 'You are not root'
fi

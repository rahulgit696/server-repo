#!/bin/bash

# Check if the user is running the script as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Get the username and password for the new user
read -p "Enter the username for the new user: " username
read -s -p "Enter the password for the new user: " password
echo

# Create the new user
useradd -m -s /bin/bash $username
echo $username:$password | chpasswd

# Add the new user to the sudo group
usermod -aG sudo $username

echo "User $username has been successfully created."

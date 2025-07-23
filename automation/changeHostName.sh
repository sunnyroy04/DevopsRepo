#!/bin/bash

if [ -z "$1" ]; then 
    echo "Usage: $0 <NewHostname>"
    exit 1
fi

NEW_HOSTNAME="$1"
OLD_HOSTNAME=$(hostname)

# Change hostname in /etc/hostname
sudo sed -i "s/$OLD_HOSTNAME/$NEW_HOSTNAME/g" /etc/hostname

# Change hostname in /etc/hosts (both IPv4 and IPv6)
sudo sed -i "s/127\.0\.0\.1\s\+$OLD_HOSTNAME/127.0.0.1\t$NEW_HOSTNAME/g" /etc/hosts
sudo sed -i "s/::1\s\+$OLD_HOSTNAME/::1\t$NEW_HOSTNAME/g" /etc/hosts

# Apply the new hostname immediately (optional)
sudo hostnamectl set-hostname "$NEW_HOSTNAME"

echo "Hostname is changed to $NEW_HOSTNAME"
echo "You may need to reboot the system for all changes to take full effect."

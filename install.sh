#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

echo "installing service"
echo "Wait."
cp restart_container_timeout.sh /usr/sbin/
echo "Wait.."
cp restart_container /etc/init.d/
echo "Wait..."
cp restart_container.service /lib/systemd/system/
echo "Wait...."
systemctl daemon-reload 
echo "Finish..."
echo ""
echo "You can starting with /etc/init.d/restart_container start"


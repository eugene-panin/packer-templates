#!/bin/sh

echo "$(date +%H:%M:%S): Clean ssh access for root..."
sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
echo ""
echo "$(date +%H:%M:%S): Clean root homedir, tempdir and /var/log"
rm -rf /tmp/* /root/*
find /var/log -type f | xargs truncate -s 0

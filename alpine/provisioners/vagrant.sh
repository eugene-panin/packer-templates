#!/bin/sh -ex

echo "$(date +%H:%M:%S): Creating vagrant user..."
(echo $VAGRANT_PASSWORD; echo $VAGRANT_PASSWORD) | adduser -s /bin/ash $VAGRANT_USERNAME
echo ""
echo "$(date +%H:%M:%S): Getting public key"
mkdir -pm 700 /home/$VAGRANT_USERNAME/.ssh
wget -O - 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' >> /home/$VAGRANT_USERNAME/.ssh/authorized_keys
echo ""
echo "$(date +%H:%M:%S): Changing onwer and rights vagrant homedir"
chown -R $VAGRANT_USERNAME:$VAGRANT_USERNAME /home/$VAGRANT_USERNAME     
chmod -R og-rwx /home/$VAGRANT_USERNAME/.ssh
echo ""
echo "$(date +%H:%M:%S): Adding vagrant user in sudoers"
echo "$VAGRANT_USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$VAGRANT_USERNAME






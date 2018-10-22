#!/bin/sh -ex

echo https://mirror.yandex.ru/mirrors/alpine/v3.8/community >> /etc/apk/repositories
apk upgrade -U --available
# apk add -U virtualbox-guest-additions virtualbox-guest-modules-virt 

# rc-update add virtualbox-guest-additions
# echo vboxsf >> /etc/modules

cat << EOF > /etc/motd
OS: Alpine Linux
Version 3.8.1

Node for development environment 


EOF

#!/bin/sh -ex


echo "$(date +%H:%M:%S): Adding comunity repository"
echo https://mirror.yandex.ru/mirrors/alpine/v3.8/community >> /etc/apk/repositories
echo "$(date +%H:%M:%S): Upgrade..."
apk upgrade -U --available
echo ""
echo "$(date +%H:%M:%S): Changing /etc/motd..."
echo ""
cat << EOF > /etc/motd
 -------------------------------------------------------------
| OS: $OS_NAME                                                
| Version: $OS_VERSION           
| Image version: $IMAGE_VERSION
| Arch: $OS_ARCH
| Box version: $BOX_VERSION
| Release date: $(date)
 -------------------------------------------------------------
| Author: $AUTHOR_NAME
| Support email: $AUTHOR_EMAIL
 -------------------------------------------------------------
    Box for development environment, enjoy! :)


EOF
echo ""
echo "$(date +%H:%M:%S): Creating shutdown command"
cat > /usr/sbin/shutdown << 'EOF'
#!/bin/sh
while getopts "h" opt; do
	case $opt in
		h) poweroff;;
	esac
done
EOF
chmod a+rx /usr/sbin/shutdown

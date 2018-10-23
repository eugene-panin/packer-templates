#!/bin/sh

echo "$(date +%H:%M:%S): Fills the remaining 0x00 disk space.  This will take a long time (approximately 15 minutes per 100 GB)."
sudo dd if=/dev/zero of=/tmp/zero.bin
sudo rm /tmp/zero.bin
echo ""
echo "$(date +%H:%M:%S): Disk cleanup completed."

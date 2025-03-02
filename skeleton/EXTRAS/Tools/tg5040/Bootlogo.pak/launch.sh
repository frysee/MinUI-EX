#!/bin/sh

set -ex

DIR=$(dirname "$0")
cd $DIR

# 396x66 (or fewer pixels)
# Save as BMP
# Windows
# 32-bit
# DO NOT flip row order

{

LOGO_PATH=$DIR/$DEVICE/bootlogo.bmp
if [ ! -f $LOGO_PATH ]; then
	echo "No logo.bmp available. Aborted."
	exit 1
fi

BOOT_PATH=/mnt/boot/
mkdir -p $BOOT_PATH
mount -t vfat /dev/mmcblk0p1 $BOOT_PATH
cp $LOGO_PATH $BOOT_PATH
sync
umount $BOOT_PATH

echo "Done."

} &> ./log.txt

# self-destruct
mv $DIR $DIR.disabled

reboot
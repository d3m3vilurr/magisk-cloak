#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

# drop mirror link
umount /dev/magisk/mirror/system
# block access user thread
chcon u:object_r:device:s0 /dev/magisk/mirror/system

mount -o remount,rw -t rootfs /
# remove read perm
if [ -f /sbin/magisk ]; then
    chmod 751 /sbin/magisk
fi
if [ -f /sbin_orig/magisk ]; then
    chmod 751 /sbin_orig/magisk
fi
mount -o remount,ro -t rootfs /

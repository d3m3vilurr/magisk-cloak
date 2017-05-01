## Magisk Cloak
Unmount `/dev/magisk/mirror/system` and change selinux policy.

In very rearly cases, some apps check this mirror directory for the
detecting rooting device.

Module make prevent access from normal applications, but actually,
this module can cause compatibility problem to the magisk and other
third party modules.

mount --rbind /dev /mnt/dev
mount --make-rslave /mnt/dev
mount -t proc /proc /mnt/proc
mount --rbind /sys /mnt/sys
mount --make-rslave /mnt/sys
mount --rbind /tmp /mnt/tmp

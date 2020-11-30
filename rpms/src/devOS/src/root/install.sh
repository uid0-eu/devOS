echo "Enter hostname:"
read myhost

echo $myhost > /etc/hostname
rm /etc/ssh/ssh*key*


rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /mnt
rm /mnt/etc/fstab
bash /root/genfstab -U /mnt >> /mnt/etc/fstab
echo "mount chroot parts:
bash chroot
chroot /mnt
grub2-install /dev/sda
grub2-mkconfig -o /boot/grub/grub.cfg
/bin/bash /root/adduser
"




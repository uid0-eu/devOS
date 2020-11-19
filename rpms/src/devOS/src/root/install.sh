rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /mnt
rm /mnt/etc/fstab
bash /root/genfstab -U /mnt >> /mnt/etc/fstab
echo "to do in chroot
arch-chroot /mnt pacman -Sy --noconfirm linux
arch-chroot /mnt grub2-install /dev/sda
arch-chroot /mnt grub2--mkconfig -o /boot/grub/grub.cfg
arch-chroot /mnt /bin/bash /root/adduser
"
echo "Enter hostname:"
read myhost

echo $myhost > /etc/hostname

rm /etc/ssh/ssh*key*



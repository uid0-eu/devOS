rsync -aAXv / --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} /mnt
rm /mnt/etc/fstab
genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt pacman -Sy --noconfirm linux
arch-chroot /mnt grub-install /dev/sda
arch-chroot /mnt grub-mkconfig -o /boot/grub/grub.cfg
arch-chroot /mnt /bin/bash /root/adduser

echo "Enter hostname:"
read myhost

echo $myhost > /etc/hostname

rm /etc/ssh/ssh*key*



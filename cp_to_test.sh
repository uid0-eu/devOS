find /var/lib/lorax/composer/results -mtime -1 -iname "*.iso" -exec scp "{}" root@10.2.2.1:/data/template/iso/devOS.iso \;
find /var/lib/lorax/composer/results -iname "*.iso" -exec rm "{}" \;

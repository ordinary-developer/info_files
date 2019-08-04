# grub restore
to restore grub loader you must load your LiveCD:
 
for identifying hard disks:
```sh
$ sudo fdisk -l 
```
 
then it is necessary to mount your disk:
```sh
$ sudo mount /dev/sdXY /mnt/disk 
$ ls /mnt/disk 
$ sudo mount --bind /dev /mnt/disk/dev  
$ sudo mount --bind /sys /mnt/disk/sys   
$ sudo mount --bind /proc /mnt/disk/proc 
```

then change your root envirenment:
```sh
$ sudo chroot /mnt/disk                 
``` 

instead of the last five commands you cat just type
```sh
$ sudo grub-install --root-directory=/mnt/disk /dev/sdXY
```

then update grub:
```sh
$ sudo update-grub  
```
and then reboot


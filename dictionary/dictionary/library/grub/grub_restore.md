# grub restore
 To restore grub loader you must load your LiveCD
 
 for identifying hard disks
  ------------------------------------------------------------------------
 | $ sudo fdisk -l                      				 |
 -------------------------------------------------------------------------
 
 then it is necessary to mount your disk
 ------------------------------------------------------------------------
 | $ sudo mount /dev/sdXY /mnt/disk 					|
 ------------------------------------------------------------------------

 ------------------------------------------------------------------------
 | $ ls /mnt/disk                           				|
 ------------------------------------------------------------------------

 ------------------------------------------------------------------------
 | $ sudo mount --bind /dev /mnt/disk/dev   				|
 | $ sudo mount --bind /sys /mnt/disk/sys   				|
 | $ sudo mount --bind /proc /mnt/disk/proc 				|
 ------------------------------------------------------------------------

 Then change your root envirenment
 ------------------------------------------------------------------------
 | $ sudo chroot /mnt/disk                  				|   
 ------------------------------------------------------------------------
 
 ( Instead of the last five commands you cat just type
   $ sudo grub-install --root-directory=/mnt/disk /dev/sdXY )
  

 /* TODO some rescue things */

 then update grub
 ------------------------------------------------------------------------
 | $ sudo update-grub  							|
 ------------------------------------------------------------------------

 and then reboot


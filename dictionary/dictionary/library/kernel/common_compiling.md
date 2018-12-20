## kernel installation unix way

 update lists of packets
 ------------------------------------------------------------------------
 | # apt-get update       						|
 ------------------------------------------------------------------------
 Install needed packets
 ------------------------------------------------------------------------
 | # apt-get install kernel-package libncurses5-dev fakeroot wget bzip2 |
 |                   build-essential bc					|
 ------------------------------------------------------------------------

 Download sources of the kernel from site www.kernel.org
 ------------------------------------------------------------------------
 | # cd /usr/src                                                         |
 | # wget 								 |
       https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.10.1.tar.xz  |
 -------------------------------------------------------------------------
 Unpack sources and create symbolic links
 ------------------------------------------------------------------------
 | # tar xJf linux-3.10.1.tar.xz				        |         
 | # rm linux (deletion of prvious symlink)				| 
 | # ln -s linux-3.10.1 linux               				|
 | # cd /usr/src/linux                      				|
 ------------------------------------------------------------------------

 The we must configure the kernel
 copy the old configuration to /usr/src/linux
 ------------------------------------------------------------------------
 | # make clean && make mrproper				        |
 | # cp /boot/config-`uname -r` ./.config                               |
 ------------------------------------------------------------------------ 
 The type the command
 ------------------------------------------------------------------------
 | # make menuconfig                                                    |
 ------------------------------------------------------------------------
 Compiling the kernel
 ------------------------------------------------------------------------
 | # make all                        					|  
 | # make modules_install            					|
 | # make install                    					| 
 ------------------------------------------------------------------------
 (# make -j N all) - where N = 2-3 for 2 cores and 4-6 for 4 cores

 or 
 ------------------------------------------------------------------------
 | # make all && make modules_install && make install 			|
 ------------------------------------------------------------------------
 
 or 
 ------------------------------------------------------------------------
 | # make -j 2 all && make modules_install && make install 		|
 ------------------------------------------------------------------------

 and before a successful rebooting
 DON'T DELETE OLD VERSIONS OF THE KERNEL!!!


## debian-way compiling 
 (not necessarily)

 But you can use packets creation instead of 3 last commands
 ------------------------------------------------------------------------
 | # make all              						|
 | # make deb-pkg          						|
 -----------------------------------------------------------------------

 then in the folder /usr/src we have two files
 ------------------------------------------------------------------------
 | Linux-2.6.27.10_2.6.27.10-1_amd64.deb     				|
 | linux-firmware-image_2.6.27.10-1_all.deb  				|
 -----------------------------------------------------------------------

 Then ve can install them
 ------------------------------------------------------------------------
 | # dpkg -i linux-2.6.27.10_2.6.27.10-1_amd64.db 			|
 ------------------------------------------------------------------------

 Next steps //all this already have been done
 we must create RAM-disk and update grub
 ------------------------------------------------------------------------
 | # depmod 2.6.23.1   (// 3.10.1)					|
 | # apt-get install yaird   						|
 ------------------------------------------------------------------------
 then
 ------------------------------------------------------------------------
 | # mkinitrd.yaird -o /boot/initrd.img-2.6.23.1 2.6.23.1 		|
 ------------------------------------------------------------------------
 then update grub
 ------------------------------------------------------------------------
 | # update-grub 							|
 ------------------------------------------------------------------------
 and reboot

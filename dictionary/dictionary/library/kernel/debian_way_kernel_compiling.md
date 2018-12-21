# kernel compiling debian way 

 Traditional way of kernel installation

 update lists of packets
 ------------------------------------------------------------------------
 | # apt-get update       						|
 ------------------------------------------------------------------------

 Install needed packets
 ------------------------------------------------------------------------
 | # apt-get install kernel-package libncurses5-dev fakeroot wget bzip2 |
 |		     build-essential bc					|
 ------------------------------------------------------------------------

 Download sources of the kernel from site www.kernel.org
 ------------------------------------------------------------------------
 | # cd /usr/src                                                        |
 | # wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.10.1.tar.xz  
 ------------------------------------------------------------------------

 Unpack sources and create symbolic links
 ------------------------------------------------------------------------
 | # tar xJf linux-3.10.1.tar.xz            				|         
 | # rm linux (deletion of prvious symlink) 				| 
 | # ln -s linux-3.10.1 linux               				|
 | # cd /usr/src/linux                      				|
 ------------------------------------------------------------------------

# patching (not necessarily)
# --------------------------
# Patching process
# You have download patch (for example, patch.bz2) into /usr/src.
# Now we are in /usr/src/linux
# type the next strings
# ------------------------------------------------------------------------
# | # bzip2 -dc /usr/src/patch.bz2 | patch -p1 --dry-run 		|
# | # bzip2 -dc /usr/src/patch.bz2 | patch -p1           		|
# ------------------------------------------------------------------------
# first string is only a test , if first command has no errors you can type the second one
# 
# So, common actions are
# ------------------------------------------------------------------------
# | # cd /usr/src                                                        |
# | # wget http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.22.8.bz2|
# | # cd /usr/src/linux                                                  |
# | # bzip2 -dc /usr/src/patch-2.6.23.8.bz2 | patch -p1 --dry-run        |
# | # bzip2 -dc /usr/src/patch-2.6.23.8.bz2 | patch -p1                  |
# ------------------------------------------------------------------------
 
 continuing
 -----------
 The we must configure the kernel
 copy the old configuration to /usr/src/linux
 ------------------------------------------------------------------------
 | # make clean && make mrproper            				|
 | # cp /boot/config-`uname -r` ./.config   				|
 ------------------------------------------------------------------------ 
 The type the command
 ------------------------------------------------------------------------
 | # make menuconfig                   					|
 ------------------------------------------------------------------------
 Compiling the kernel
 ------------------------------------------------------------------------
 | # make-kpkg clean                                                    |	
 | # fakeroot make-kpkg --initrd 					|
 |            --append-to-version=-cybermind kernel_image kernel_headers|
 ------------------------------------------------------------------------
 
 After --append-to-version= you can write anything, 
 but it must have first '-' and must have no spaces

 Sometimes it may be a bug, so you must create initrd.img manually
 ------------------------------------------------------------------------
 |# update-initramfs -c -k <full-verion-of-the-kernel> 			|
 ------------------------------------------------------------------------
 
 for decisioning problem on future comment the second string in file
 /etc/kernel/postinst.d/initramfs-tools:
 -------------------------------------------------------------------------------
 | # kernel-package passes an extra arg; hack to not run under kernel-package  |
 | #[ -z "$2" ] || exit 0                                                      |
 -------------------------------------------------------------------------------
 
 Installing of the new kernel
---------------------------------------------------------------------------------
 | # cd /usr/src    							 	|
 | # ls -l          								| 
 --------------------------------------------------------------------------------

 and then install two packets
 --------------------------------------------------------------------------------
 | # dpkg -i linux-image-2.6.23.1-cybermind_2.6.23.1-cybermind-10.00.Custom_i386.deb     
 | # dpkg -i linux-headers-2.6.23.1-cybermind_2.6.23.1-cybermind-10.00.Custom_i386.deb   
 ---------------------------------------------------------------------------------

 and rebooting
 useful logs

 /var/log/syslog
 /var/log/kernel
 /var/log/dmesg

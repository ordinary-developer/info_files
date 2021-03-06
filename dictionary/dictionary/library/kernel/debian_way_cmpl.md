# debian way kernel compiling
traditional way of kernel installation:
- update lists of packets
  ```sh
  # apt-get update 
  ```

- install needed packets:
  ```sh 
  # apt-get install kernel-package libncurses5-dev fakeroot wget bzip2 
 		     build-essential bc					
  ```

- download sources of the kernel from site www.kernel.org:
  ```sh
  # cd /usr/src                                                        
  # wget https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.10.1.tar.xz  

- unpack sources and create symbolic links:
  ```sh
  # tar xJf linux-3.10.1.tar.xz            				      
  # rm linux (deletion of prvious symlink) 				 
  # ln -s linux-3.10.1 linux               				
  # cd /usr/src/linux                      				
  ```

# patching (not necessarily)
you have download patch (for example, patch.bz2) into /usr/src.
now we are in /usr/src/linux
type the next strings:
```sh
# bzip2 -dc /usr/src/patch.bz2 | patch -p1 --dry-run 		
# bzip2 -dc /usr/src/patch.bz2 | patch -p1          
```
 first string is only a test , if first command has no errors you can type the second one
 
so, common actions are:
```sh
# cd /usr/src                                                        
# wget http://www.kernel.org/pub/linux/kernel/v2.6/patch-2.6.22.8.bz2
# cd /usr/src/linux                                                  
# bzip2 -dc /usr/src/patch-2.6.23.8.bz2 | patch -p1 --dry-run        
# bzip2 -dc /usr/src/patch-2.6.23.8.bz2 | patch -p1                  
```
 
## continuing
then we must configure the kernel
copy the old configuration to /usr/src/linux:
```sh
# make clean && make mrproper            				
# cp /boot/config-`uname -r` ./.config   				
```

then type the command:
```sh
# make menuconfig                   					
```

compile the kernel:
```sh
# make-kpkg clean                                                    
# fakeroot make-kpkg --initrd 
          --append-to-version=-cybermind kernel_image kernel_headers
```
 
after --append-to-version= you can write anything, 
but it must have first '-' and must have no spaces

sometimes it may be a bug, so you must create initrd.img manually:
```sh
# update-initramfs -c -k <full-verion-of-the-kernel> 
```
 
for decisioning problem on future comment the second string in file
`/etc/kernel/postinst.d/initramfs-tools`:
```sh
# kernel-package passes an extra arg; hack to not run under kernel-package  
#[ -z "$2" ] || exit 0                                                      
```

 
## installing a new kernel
```sh
# cd /usr/src  
# ls -l  
```

and then install two packages:
```sh
# dpkg -i linux-image-2.6.23.1-cybermind_2.6.23.1-cybermind-10.00.Custom_i386.deb     
# dpkg -i linux-headers-2.6.23.1-cybermind_2.6.23.1-cybermind-10.00.Custom_i386.deb   
```
and rebooting


## useful logs
- /var/log/syslog
- /var/log/kernel
- /var/log/dmesg


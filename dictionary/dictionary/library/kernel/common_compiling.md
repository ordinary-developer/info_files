## unix way kernel compiling
main steps are:
- update lists of packets
  ```sh
  # apt-get update 
  ```

- install needed packets
  ```sh
  # apt-get install kernel-package libncurses5-dev fakeroot wget bzip2 
                    build-essential bc
  ```

- download sources of the kernel from site www.kernel.org
  ```sh
  # cd /usr/src                                                         
  # wget 								 
     https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.10.1.tar.xz  
  ```

- unpack sources and create symbolic links
  ```sh 
  # tar xJf linux-3.10.1.tar.xz				              
  # rm linux (deletion of prvious symlink)				 
  # ln -s linux-3.10.1 linux               				
  # cd /usr/src/linux                      				
  ```

- then we must configure the kernel
   copy the old configuration to /usr/src/linux
   ```sh
   # make clean && make mrproper				        
   # cp /boot/config-`uname -r` ./.config                               
   ```

- then type the command
  ```sh
  # make menuconfig                                                    
  ```

- compile the kernel
  ```sh
  # make all                        					
  # make modules_install            					
  # make install                    					 
  ```
 (# make -j N all) - where N = 2-3 for 2 cores and 4-6 for 4 cores

  or 
  ```sh
  # make all && make modules_install && make install 			
  ```
 
  or 
  ```sh
  # make -j 2 all && make modules_install && make install 		
  ```

and before a successful rebooting
DON'T DELETE OLD VERSIONS OF THE KERNEL!!!


## debian way kernel compiling 
but you can use packets creation instead of 3 last commands:
```sh
# make all              
# make deb-pkg          						
```

then in the folder /usr/src we have two files:
```sh
Linux-2.6.27.10_2.6.27.10-1_amd64.deb     				
linux-firmware-image_2.6.27.10-1_all.deb  				
```

then ve can install them:
```sh
# dpkg -i linux-2.6.27.10_2.6.27.10-1_amd64.db 			
```

next steps //all this already have been done
we must create RAM-disk and update grub:
```sh
# depmod 2.6.23.1   (// 3.10.1)					
# apt-get install yaird   						
```

then:
```sh
# mkinitrd.yaird -o /boot/initrd.img-2.6.23.1 2.6.23.1 		
```

then update grub:
```sh
# update-grub 							
```

and reboot


# mount config

## manual mounting
to mount flash it is necessary to type next command:
```sh
# mount -t vfat /dev/sdc1 /media/flash -o iocharset=koi8-r,codepage=866 
```

or
```sh
# mount -t vfat /dev/sdc1 /mnt/flash 
```

to mount a usb-stick under a regular user:
```sh
$ sudo mount -t vfat -o uid=user,gid=group /dev/sdb1 /home/user/flash
```
to find id for your user: `$ id`
to find gid (group id) for your user: `$ groups`,

to mount usb for all users:
```sh
$ sudo mount --type vfat --option umask=000 /dev/sdb1 /mnt/flash1
```

or just for your options:
```sh
$ sudo mount -t vfat -o uid=ivan,gid=ivan /dev/sdb1 ~/flash          |
```


## auto mounting
to mount only your flashes in your folders:
```sh
$ sudo blkid /dev/sdb1                                               
```

for example the result will be
/dev/sdb1: UUID="7A82-1B89" TYPE="vfat"

now write in '/etc/fstab'
```sh
UUID=7A82-1B89  /media/flash1  vfat  user,noauto,noatime,flush  0  0 
```
here user may be your user ("ivan" and e.t.c)
remember that in the end of you fstab file must be a new line

then simply run:

- to mount:   `$ mount /media/flash1`
- to unmount: `$ umount /media/flash1`

instead of /media/flash1 you can use /home/ivan/flash1
for receving rights to writing.

also some options can be usefull: `codepage=866, iocharset=koi8-r`


## scripting
if you can't stop umount your flash you can use the next scripts:

brutal script:
```sh
#!/bin/sh                                                            
# try to kill all process politely                                    
fuser -k TERM -m /media/flash1                                         
sleep 1                                                              
# if we have processes yet, we must kill the brutally                 
fuser -k KILL -m /media/flash1                                        
sleep 1                                                               
# and now unmount it                                                  
```

but remember if your filesystem is not mounted then the kill procedure
will begin to kill all (e.g ROOT FILE SYSTEM), so you must be carefull
and you must always check "mountpoint"

the next script I think will be more polite
polite script:
```sh
#!/bin/sh                                                            
                                                                    
if test "_$#" = '_1'                                                 
then                                                                 
    FS="$1"                                                          
else                                                                 
    echo 'Usage: ' $0 '/mount-point'                                 
    exit 1                                                           
fi                                                                   

for sig in TERM KILL                                                 
do                                                                   
    if mountpoint -q "$FS"                                           
    then                                                             
        if fuser -m "$FS"                                            
        then                                                         
            fuser -k $sig -m "$FS"                                   
            sleep 1                                                  
        else                                                         
            break;                                                   
        fi                                                           
    else                                                             
        echo 'not mounted'                                           
        exit 0                                                      
    fi                                                               
done                                                                 
                                                                      
umount "$FS"                                                         
```


 other commands
 ------------------

 Manual mounting
 ------------------------------------------------------------------------
 | $ sudo mount -o git=users, fmask=133, dmask=002 /dev/sda1 /mnt/flash |   
 ------------------------------------------------------------------------

 /etc/fstab
 ------------------------------------------------------------------------
 | /dev/sda1 /mnt/flash vfat user,noauto,noatime,flush 0 0              |
 ------------------------------------------------------------------------
 or something like this
 ------------------------------------------------------------------------
 | /dev/sda1 /mnt/flash vfat users,noauto,uid=ivan,gid=users 0 0        |
 ------------------------------------------------------------------------
 
 and then 
 ------------------------------------------------------------------------
 | $ mount /mnt/flash                                                   |
 ------------------------------------------------------------------------

 or
 ------------------------------------------------------------------------
 | /dev/sda1 /mnt/flash vfat user,auto,noatime,flush 0 0                |
 ------------------------------------------------------------------------
 And all must be mount automatically


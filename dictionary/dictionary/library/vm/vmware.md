# vmware

## install vmware-tools
first run:
```
"VM->Install VMware tools ..."
```

then mount this disk:
```sh
$ mount /media/cdrom
```
(/dev/sr0 - it is a disk)

then in your files unpack your files
first you must install:
- linux-headers
- make
- gcc
- perl

you can install linux headers:
```sh
$ sudo apt-get install headers-3.16.0-4-amd64
```
and then run the .pl file


## alternate installation
(before you must have gcc installed)
type in console:
```sh
$ apt-get install linux-headers
$ apt-get install open-vm-tools
$ apt-get install open-vm-tools-dkms
$ dpkg-reconfigure open-vm-tools
```

_remark:_ you must run `dpkg-reconfigure`
only if you have installed vm-tools before linux headers

to install a shared folder:
```
add a share folder in VM Windows GUI Settings
```

to see s shared folder:
```
vmware-hgfsclient (to see a shared folder)
``` 

to mount a shared folder in a vm:
```
$ sudo mount --type vmhgfs .host:/shared_folder /mnt/hgfs
```
(where "shared_folder" here is the name of your shared folder
 in VM settings)

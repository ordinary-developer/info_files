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


 alternative installation
 ========================

(before you must have gcc installed)

apt-get install linux-headers
apt-get install open-vm-tools
apt-get install open-vm-tools-dkms
dpkg-reconfigure open-vm-tools (if you have installed it before headers)

add a share folder in VM Windows GUI Settings

vmware-hgfsclient (to see a shared folder)

sudo mount --type vmhgfs .host:/shared_folders /mnt/hgfs
(where "shared_folders" here is the name of your shared folder in VM settings)

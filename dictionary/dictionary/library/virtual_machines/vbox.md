# virtual box (vbox)

## necessary actions
1. configure apt
2. install sudo
3. install base compilation environment
4. install Xorg
5. install virtual box support
6. install and configure vim
7. install and configure vifm


5. Install virtual box support
---------------------------------------

Install Linux headers:
```sh
$ apt-get install linux-headers-$(uname -r)
```

Mount VBox cd and run the installer:
```sh
$ mount --type iso9660 /dev/sg0 /mnt/cdrom
$ sudo ./VBoxLinuxAdditions.run
```

Create a folder with a specified name (for example "share")
in Virtual Machine GUI settings and mount it in VBox:
```
$ sudo mount -t vboxsf -o rw,uid=1000,gid=1000 share ~/host
```

Then it is necessary to load VBox drivers
```sh
$ sudo modprobe -a vboxguest vboxsf vboxvideo
```

To not type this command every time
create a file */etc/modules-load.d/vbox.conf* with the contents:
```
vboxguest
vboxsf
vboxvideo
```

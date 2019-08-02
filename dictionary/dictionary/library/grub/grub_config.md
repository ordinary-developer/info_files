# grub info
for installing your linux version above the Windows OS
you must have the next options in your BIOS:
```
BootSecure    Disabled 
```
if it is enabled you will not load your linux (as usually)

also for booting from cd (dvd) without eufi you must have 
```
Legacy    Enabled
```
but after installing your linux you must put it enabled.

to edit a timeout you must open the `/etc/default/grub` file
and print something like
```
GRUB_TIMEOUT=60 
```

then you must print in the shell
```sh
# update-grub            
```


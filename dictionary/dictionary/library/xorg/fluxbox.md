# fluxbox

## prerequisites
you must have correctly worked xorg-server, xinit and xdm

 
## install
to install fluxbox:
```sh
$ sudo apt-get install fluxbox
```


## postrequisites
it is necessary to type the next command:
```sh
$ echo "exec fluxbox" > /home/artur/.xinitrc
```

then you can type to start fluxbox:
```sh
$ Xorg
```
 
*remark*
but if you have xinit and xdm installed,
fluxbox must run automatically after rebooting

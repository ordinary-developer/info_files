# fluxbox

## prerequisites
you must have correctly worked xorg-server, xinit and xdm

 
## install
to install fluxbox:
```sh
$ sudo apt-get install fluxbox
```


## postrequisites
 It is necessary to type the next command
 ------------------------------------------------------------------------
 | $ echo "exec fluxbox" > /home/artur/.xinitrc				|
 ------------------------------------------------------------------------

 Then you can type to start fluxbox
 ------------------------------------------------------------------------
 | $ Xorg								|
 ------------------------------------------------------------------------
 
 * but if you have xinit and xdm installed, fluxbox must run automatically 
   after rebooting.

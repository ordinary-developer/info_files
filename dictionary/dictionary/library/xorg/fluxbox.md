# fluxbox

## prerequisites
 You must have correctly worked xorg-server, xinit and xdm.
 
 Installation
 ------------ 
 To install fluxbox you must type
 ------------------------------------------------------------------------
 | $ sudo apt-get install fluxbox					|
 ------------------------------------------------------------------------

 postrequisites
 --------------
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

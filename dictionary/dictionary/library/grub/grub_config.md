# grub info

 For installing your linux version above the windows 
 You must have the next options in your BIOS
 ---------------------------------
 | BootSecure		Disabled |
 ---------------------------------
 If it is enabled you will not load your linux (as usually)

 Also for booting from cd (dvd) without eufi you must have 
 ---------------------------------
 | Legacy		Enabled	 |
 --------------------------------
 but after installing your linux you must put enabled.

 To edit for example timeout you must open the next file
 ------------------------------------------------------------------------
 | /etc/default/grub        						|
 ------------------------------------------------------------------------ 
 And print something like
 ------------------------------------------------------------------------
 | GRUB_TIMEOUT=60                    					|
 ------------------------------------------------------------------------
 then you must print
 ------------------------------------------------------------------------
 |  # update-grub            						|
 ------------------------------------------------------------------------

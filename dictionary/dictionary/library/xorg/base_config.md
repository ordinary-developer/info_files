# xorg config

## prerequisites
sometimes it is necessary your user to be in the "video" group
 

## install
to install xorg-server you must type:
```sh
$ sudo apt-get install xserver-xorg
$ sudo apt-get install xinit
$ sudo apt-get install xterm
```

to configuring type:
```sh
# Xorg -configure
```

after that you must edit file `/$HOME/xorg.conf.new`
which was generated automatically

after editing this file you can try to test your configuration:
```sh
# Xorg -config xorg.conf.new
```
to break the server, press Ctrl-Alt-Backspace
(it will show only the black screen)

to launch with the retro options:
```sh
# Xorg -config xorg.conf.new -retro
```
 
if all is allright you must copy you Xorg file:
```sh
# cp $HOME/xorg.conf.new /etc/X11/xorg.conf
```

if your Xorg doesn't start use:
```sh
$ sudo chmod u+s /usr/bin/Xorg
```


## postrequisites
 If something fail, you can watch log files
 ------------------------------------------------------------------------
 | var/log/Xorg.0.log							|
 ------------------------------------------------------------------------

 other
 -----
 For LCD Panel you can write something next in file
 ------------------------------------------------------------------------
 | /etc/X11/xorg.conf 							|
 ------------------------------------------------------------------------
 the next strings
 ------------------------------------------------------------------------
 | ...                                					|
 | Section "Monitor"                  					|
 |   Identifier ...                   					|
 |   VendorName ...                   					|
 |   ModelName  ...                   					|
 |   ModelLine  ...                   					|
 |   HorizSync  31.5 - 48.5           					|
 |   VertRefresh 40.0 - 70.0          					|
 |   ....                             					|
 | Screen                             					|
 |   ...                              					|
 |   DefaultDepth 24                  					|
 |   SubSection "Display"             					|
 |         Viewport   0 0              					|
 |         Depth      24               					|
 |         Modes      "1920x1080_60.0" 					|
 |   EndSubSection							|
 |   ...								|
 | ...									|
 ------------------------------------------------------------------------

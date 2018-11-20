# XAMPP
 
## install
first download the installer from internet https://www.apachefriends.org
then change the permissions to the installer:
```sh
$ chmod 755 xampp-linux-*-installer.run
```
 
then run the installer:
```sh
$ sudo ./xampp-linux-*-installer.run
```

for starting:
```sh
$ sudo /opt/lampp/lampp start
```

for stopping:
```sh
$ sudo /opt/lampp/lampp stop
```

also, note that there is a graphical tool that you can use 
to manage your servers easily;
you can start this tool with the following commands:
```sh
$ cd /opt/lampp	
$ sudo ./manager-linux.run (or manager-linux-x64.run)
```


## config

 To allow an access from other machine (not from local machine only)
 edit the file
 ------------------------------------------------------------------------
 | /opt/lampp/etc/extra/httpd-xampp.conf				|
 ------------------------------------------------------------------------

 ------------------------------------------------------------------------
 | <LocationMatch "^/(?i:(?:xampp|security|licenses|phpmyadmin|webalizer|server-status|server-info))">
 | 	Require local    
 |      ErrorDocument 403 /error/XAMPP_FORBIDDEN.html.var
 | </LocationMatch>
 ------------------------------------------------------------------------

 comment the string "require local"
 and the insert after the string "#Require local"
 ------------------------------------------------------------------------
 | Allow from ::1 192.168.255.1						|
 ------------------------------------------------------------------------
 or some other ip 

 to put the files to server use the next folder
 ------------------------------------------------------------------------
 | /opt/lampp/htdocs							|
 ------------------------------------------------------------------------
 
 



qt
without sources 

you must intall in your python virtualenv sip and pyqt
sip
python configure.py -d /usr/local/stow/sip-1.6.1 
and so on

pyqt
python configure.py --destdir ~/dev/envs/pyqt5/lib/python3.4/site-packages/ --qmake ~/Qt/5.4/gcc_64/bin/qmake
here instead of ~/dev ... must be /usr/local/stow

http://habrahabr.ru/post/248189/ - site about pyqt installation
virtualenv --prompt="[pyqt5] " pyqt5
$ python /usr/local/bin/pyvenv project_env ~/sandboxes/python/pyqt5
$ source ~/sandboxes/python/pyqt5/bin/activate


stow ALLWAYS will put output files to /usr/local/stow 
and if you even do not specify the path by the prefix notation in the configure script


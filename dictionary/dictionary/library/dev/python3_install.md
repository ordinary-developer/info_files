# python 3 install

## pre-install
 may be it is necessary to install the next packages:
 --------------------------------------------------------------------
 | $ sudo apt-get install libxslt-dev libxml2-dev libevent-dev      |
 --------------------------------------------------------------------

 it is neccessary to install some packages 
 ------------------------------------------------------------------------
 | $ sudo apt-get install libreadline-dev               				|
 |                        openssl libssl-dev          		|
 |                        libsqlite3-dev sqlite3			            |
 ------------------------------------------------------------------------
  
 "openssl" and "libssl-dev" are necessary for ssl support.
 (And for the proper installation of pip)
 You must remember that "openssl" package will install to "/usr"

 "sqlite3" package is neccessary for django dev

 extract it python sources
 ------------------------------------------------------------------------
 | $ tar -xjf Python-3.xtar.bz2 cd Python-3.x  				|
 ------------------------------------------------------------------------

 Then in the file 'Modules/Setup.dist' in the Python source
 ----------------------------------------------------------------------------------------
 |...										    	|	
 | 											|
 |# CSV file helper									|
 | 207 #_csv _csv.c									|
 | 208											|
 |209 # Socket module helper for socket(2)						|
 |210 _socket socketmodule.c								|
 |211											|
 |212 # Socket module helper for SSL support; you must comment out the other		|
 |213 # socket line above, and possibly edit the SSL variable:				|
 |214 SSL=/usr/local/ssl								|
 |215 _ssl _ssl.c \									|
 |216     -DUSE_SSL -I$(SSL)/include -I$(SSL)/include/openssl \				|
 |217     -L$(SSL)/lib -lssl -lcrypto							|
 |218											|
 |219 # The crypt module is now disabled by default because it breaks builds		|
 |220 # on many systems (where -lcrypt is needed), e.g. Linux (I believe).		|	
 |221 #											|
 |222 # First, look at Setup.config; configure may have set this for you.		|
 |223											|
 |224 #crypt cryptmodule.c # -lcrypt  # crypt(3); needs -lcrypt on some systems		|
 ----------------------------------------------------------------------------------------

 uncomment the line (210) (in your file may be anther line)
 in the line 214 you must write
 ------------------------------------------------------------------------
 | SSL=/usr								|
 ------------------------------------------------------------------------ 
 (or something yours)
 then uncoment 215-217  

 After that you must see your python's 'setup.py'
 and find the next strings
 ------------------------------------------------------------------------
 |1047 sqlite_inc_path = [ '/usr/include',				|
 |1048 			   '/usr/include/sqlite',			|
 |1049			   '/usr/include/sqlite3',			|
 |1050			   '/usr/local/include'				|
 |1051			   '/usr/local/include/sqlite			|
 |1052			   '/usr/local/include/sqlite3			|
 |1053			 ]						|
 ------------------------------------------------------------------------
 And you must AUGMENT THIS PATH, if you have installed your sqlite manually



 install
 =======

 to compile python
 ------------------------------------------------------------------------
 | $ sudo ./configure --prefix=/usr/local --exec-prefix=/usr/local	|
 | $ sudo make -j 2				       			| 
 | $ sudo make install //("$ sudo checkinstall -D")			| 				       			
 ------------------------------------------------------------------------

 Optionally you can create an alias
 ------------------------------------------------------------------------
 | $ echo 'alias py="/usr/local/python3/bin/python3.4"' >> .bashrc      |
 ------------------------------------------------------------------------


 
 alternative install
 ===================

 Your can your deasdnake PPA
 ------------------------------------------------------------------------
 | $ sudo apt-get install python-software-properties                    |
 | $ sudo add-apt-repository ppa:fkrull/deadsnakes                      |
 | $ sudo apt-get update                                                |
 | $ sudo apt-get install python3.3                                     |
 ------------------------------------------------------------------------



 post-install
 ============
 
 create a virtual environment in your home:
 ------------------------------------------------------------------------
 | $ /usr/local/python3/bin/pyvenv ~/py3     				|
 ------------------------------------------------------------------------
 activate the virtualenv:
 ------------------------------------------------------------------------
 | $ source ~/py3/bin/activate                                          |
 ------------------------------------------------------------------------
 install any python packages you want (i.e. bottle) (optionally)
 ------------------------------------------------------------------------
 | $ pip install bottle             					|
 ------------------------------------------------------------------------
 


 auxiliary info
 ==============

 to install other tools
 install distribute tools:
 ------------------------------------------------------------------------
 | $ wget http://python-distribute.org/distribute_setup.py     		|
 |        python distribute_setup.py                           		|
 ------------------------------------------------------------------------
 install pip:
 ------------------------------------------------------------------------
 | $ easy_install pip							|
 ------------------------------------------------------------------------

 If you have a message 
 'Ignoring ensurepip failure: pip 1.5.6 requires SSL/TLS'

 If you do not need pip to be installed during installation, and just on the system, 
 you can install it afterwards by downloading 
 'get-pip.py'
 and running 
 --------------------------------------
 | $ /path/to/my/python get-pip.py    |
 ---------------------------------------
 
 packages sometimes neccessary for python install 
 ------------------------------------------------------------------------
 | $ sudo apt-get install build-essential libncursesw5-dev		| 
			  bzip2 libbz2-dev build-dep			|	
 |                        libreadline5-dev libssl-dev libgdbm-dev 	|
 |                        libc6-dev libsqlite3-dev tk-dev zlib1g-dev 	|
 |                        liblzma-dev					|
 ------------------------------------------------------------------------

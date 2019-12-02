# Python3 install

## pre-install
(may be) it is necessary to install the next packages:
```sh
$ sudo apt-get install libxslt-dev libxml2-dev libevent-dev 
```

necessary packages:
```
$ sudo apt-get install
    libreadline-dev openssl libssl-dev libsqlite3-dev sqlite3
```

*remark:*
the "openssl" and "libssl-dev" pacages are necessary for ssl support
(and for the proper installation of pip)
the "openssl" package will be installed to "/usr"
the "sqlite3" package is neccessary for development with django

extract it python sources:
```sh
$ tar -xjf Python-3.xtar.bz2 cd Python-3.x  
```

then in the file 'Modules/Setup.dist' in the Python source:
```
# CSV file helper
207 #_csv _csv.c							
208	
209 # Socket module helper for socket(2)
210 _socket socketmodule.c	
211	
212 # Socket module helper for SSL support; you must comment out the other
213 # socket line above, and possibly edit the SSL variable:
214 SSL=/usr/local/ssl	
215 _ssl _ssl.c \	
216     -DUSE_SSL -I$(SSL)/include -I$(SSL)/include/openssl \
217     -L$(SSL)/lib -lssl -lcrypto	
218	
219 # The crypt module is now disabled by default because it breaks builds
220 # on many systems (where -lcrypt is needed), e.g. Linux (I believe)
221 #											|
222 # First, look at Setup.config; configure may have set this for you.
223
224 #crypt cryptmodule.c # -lcrypt  # crypt(3); needs -lcrypt on some systems
```

then uncomment the line (210) (in your file may be anther line)
in the line 214 you must write:
```
SSL=/usr
```
(or something yours), then uncomment the lines 215, 216 and 217.

after that you must see your python's 'setup.py'
and find the next strings:
```
1047 sqlite_inc_path = [ '/usr/include',
1048 			   '/usr/include/sqlite',
1049			   '/usr/include/sqlite3',
1050			   '/usr/local/include'
1051			   '/usr/local/include/sqlite
1052			   '/usr/local/include/sqlite3
1053			 ]
```
and you must AUGMENT THIS PATH, if you have installed your sqlite manually.


## install
to compile python:
```sh
$ sudo ./configure --prefix=/usr/local --exec-prefix=/usr/local	
$ sudo make -j 2
$ sudo make install //("$ sudo checkinstall -D")
```

optionally you can create an alias:
```sh
$ echo 'alias py="/usr/local/python3/bin/python3.4"' >> .bashrc      
```


## alternative installation
your can your deasdnake PPA:
```sh
$ sudo apt-get install python-software-properties                    
$ sudo add-apt-repository ppa:fkrull/deadsnakes                  
$ sudo apt-get update                                               
$ sudo apt-get install python3.3                                     
```


## post-install
create a virtual environment in your home:
```sh
$ /usr/local/python3/bin/pyvenv ~/py3 
```

activate the virtualenv:
```sh
$ source ~/py3/bin/activate                                          
```

install any python packages you want (i.e. bottle) (optionally):
```sh
$ pip install bottle 
```


## aux info
to install other tools install distribute tools:
```sh
$ wget http://python-distribute.org/distribute_setup.py     
    python distribute_setup.py                     
```

install pip:
```sh
$ easy_install pip
```

if you have a message
*'Ignoring ensure pip failure: pip 1.5.6 requires SSL/TLS'*

if you do not need pip to be installed during installation,
and just on the system, you can install it afterwards 
by downloading 'get-pip.py' and running:
```sh
$ /path/to/my/python get-pip.py
```

packages sometimes neccessary for python install:
```sh
$ sudo apt-get install build-essential libncursesw5-dev	
    bzip2 libbz2-dev build-dep	
    libreadline5-dev libssl-dev libgdbm-dev 
    libc6-dev libsqlite3-dev tk-dev zlib1g-dev 
    liblzma-dev
```

# mysql install

## prerequisites 

## pre-install
```sh
$ sudo groupadd mysql
$ sudo useradd -g mysql mysql
```


## install
unpack your mysql archive:
```sh
$ sudo tar zxvf mysql-VERSION.tar.gz
$ cd mysql-VERSION
```

if your mysql-distributive has cmake install option you
must install cmake and then run cmake. 
(the file CMakeLists.txt must be in the same directory)
```sh
$ sudo apt-get install cmake
$ sudo cmake 
```

otherwise (your mysql distributive has no CMakeLists.txt):
```sh
$ sudo ./configure --prefix=usr/local/mysql
       --with-unix-sock-path=/tmp/mysql.sock
       --with-charset=utf8
```

then type:
```sh
$ sudo make -j 2
$ sudo make install
```


post-install:
type the next commands
(remember, you must enter /usr/local/mysql
(or you working mysql directory))
```sh
$ sudo chown -R mysql 
$ sudo chgrp -R mysql .
$ sudo scripts/mysql_install_db --user=mysql
$ sudo chown -R root 
$ sudo chown -R mysql data
$ sudo chown -R mysql .
``

Copy your config file:
```sh
$ sudo cp support-files/my-default.cnf /etc/my.cnf
```

Optionally you can put your mysql script to autoload:
```sh
$ sudo cp support-files/mysql.server /etc/init.d/mysql.server
```

start server:
```sh
$ sudo /usr/local/mysql/bin/mysqld_safe --user=mysql & 
```


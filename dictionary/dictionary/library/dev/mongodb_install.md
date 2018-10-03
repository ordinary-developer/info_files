# mongodb install

## pre install
It is neccessary to install some packages (scons, gcc, python 2.7)


## install
To install run in your unpacked directory (for x64 architecture)
(may be the first command is with sudo)
```sh
$ scons --jobs 4 --64 --ssl all					
$ sudo scons --jobs 4 --64 --ssl --prefix=/usr/install		
```

## aux info
[A usful site]
http://gravitronic.com/compiling-mongodb-with-ssl-support-on-ubuntu-12-04-lts/

[Debian way installation]
(http://docs.mongodb.org/master/tutorial/install-mongodb-on-debian/?_ga=1.84720666.2094401186.1433601836)

[Simple debian way installation]
(http://docs.mongodb.org/manual/tutorial/install-mongodb-on-linux/?_ga=1.60307374.2094401186.1433601836)


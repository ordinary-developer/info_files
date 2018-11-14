# tck tk install

## tcl install
it is possibly to install tcl from sources:
```sh
$ ./configure --prefix=/usr/local --exec-prefix=/usr/local
    --enable-threads --enable-64bit
$ make -j 4
$ sudo make install (# or "$ sudo checkinstall -D")
```


## tk install
to install tk from sources:
```sh
$ ./configure --prefix=/usr/local --exec-prefix=/usr/local
    --with-tcl=/usr/local
    --enable-threads --enable-64bit	
```
where "--with-tcl" flag poits to your tcl installation path



 installation from packages
 ==========================

 to install tk from packages 
 ------------------------------------------------------------------------
 | $ sudo apt-get install tk tk-dev					|
 ------------------------------------------------------------------------

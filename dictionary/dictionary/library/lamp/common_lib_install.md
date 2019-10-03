# common lib for apache

## prerequisites 
sometimes it is necessary to install base utils:
```sh
$ sudo apt-get install build-essential autconf cmake
```
 

## openssl
official site - https://www.openssl.org/
```sh
$ tar -xvzf openssl.tar.gz
$ sudo ./configure --prefix=/usr/local/openssl 
                   --openssldir=/usr/local/openssl (not necessarily)
                   shared 
                   no-ssl2 
$ sudo make depend
$ sudo make -j 2
$ sudo make install
```

openssl is now situated in /usr/local/openssl


## apr
official site - http://apr.apache.org/
```sh
$ tar -xvzf apr.tar.gz
$ sudo ./configure --prefix=/usr/local/apr 
                   --enable-shared
                   --enable-threads 
                   --enable-other-child
$ sudo make -j 2
$ sudo make install	
```

apr is now situated in /usr/local/apr


## apr-iconv
official site - http://apr.apache.org/
```sh
$ tar -xvzf apr-iconv.tar.gz
$ sudo ./configure --prefix=/usr/local/apr-iconv
                   --with-apr=/usr/local/apr
$ sudo make -j 2
$ sudo make install
```
apr-iconv is now located in /usr/local/apr-iconv


## apr-util
official site - http://apr.apache.org/
```sh
$ tar -xvzf apr-util.tar.gz
$ sudo ./configure --prefix=/usr/local/apr-util
                   --with-apr=/usr/local/apr
                   --with-iconv=/usr/local/apr-iconv
                   --with-mysql=/usr/local/mysql
                   --with-sqlite3 
$ sudo make -j 2
$ sudo make install
```

apr-util is now located in /usr/local/apr-util 
*remark* May be it is necessary to type `--with-sqlite=[PATH]`
 

## pcre
official site - http://www.pcre.org/
```sh
$ tar -xvzf pcre.tar.gz
$ sudo ./configure --prefix=/usr/local/pcre 
                   --enable-unicode-properties
$ sudo make -j 2
$ sudo make install	
```

pcre is now located in /usr/local/pcre


# common libs for php

## curl
official site - http://curl.haxx.se/:
```sh
$ tar -xvzf curl.tar.gz	
$ sudo ./configure --prefix=/usr/local/curl 
                   --with-ssl=/usr/local/openssl
$ sudo make -j 2
$ sudo make install
```

curl is now located in /usr/local/curl

 
## zlib
official site - http://www.zlib.net/
```sh
$ tar -xvzf zlib.tar.gz
$ sudo ./configure --prefix=/usr/local/zlib (or /usr/local)
$ sudo make -j 2
$ sudo make install
```

zlib is now located in /usr/local/zlib

*remark* You can install zlib by using a package manage:
```sh
$ sudo apt-get install zlib-bin zlib1g zlib1g-dev
```        


## bz2
official site - http://bzip.org/
```sh
$ tar -xvzf bz2.tar.gz
$ sudo make -j 2
$ sudo make install PREFIX=/usr/local/bz2
```
bz2 is now located in /usr/local/bz2
 

## libjpeg
official site -  http://jpegclub.org/support/
```sh
$ tar -xvzf jpegsrc.v8d1.tar.gz	
$ sudo ./configure --prefix=/usr/local/jpeglib
$ sudo make -j 2
$ sudo make install
```
jpeglib is now located in /usr/local/jpeglib

 
## libpng
official site -  http://www.libpng.org/
```sh
$ tar -xvzf pnglib.tar.gz
$ sudo ./configure --prefix=/usr/local/pnglib
$ sudo make -j 2
$ sudo make install
```

pnglib is now located in /usr/local/pnglib

 
## freetype2
official site -  http://www.freetype.org/
```sh
$ tar -xvzf pnglib.tar.gz
$ sudo ./configure --prefix=/usr/local/freetype2lib	
$ sudo make -j 2
$ sudo make install
```

pnglib is now located in /usr/local/freetype2lib 

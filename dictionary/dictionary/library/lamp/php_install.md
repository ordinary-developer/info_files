# php install
 
# prerequisites
```sh
$ httpd -l
```

module mod_so.c must be installed

```sh
$ find / -name apxs
```
apxs utility must be find

```sh
$ httpd -v
```
the appache version must be recent


#pre-install
Sometimes it is neccessary to install libxml2 libraries:
```sh
# apt-get install libxml2 libxml2-dev
```

It is also necessary to install XDEBUG.so extension (see in my Wiki).

 Installation
 ------------
 official site - www.php.net  
 ------------------------------------------------------------------------
 | $tar -xvf php-VERSION.tar.bz2					|
 | $cd php-VERSION							|
 | $sudo ./configure --prefix=/usr/local/php 				|
 |                   --with-config-file-path=/usr/local/php 		|	
 |                    							|
 |                    --with-apxs2=/usr/local/apache2/bin/apxs 		|
 |                    --with-iconv-dir=/usr/local/apr-iconv 		|
 |                    --with-openssl=/usr/local/openssl 		|
 |                    --with-curl=/usr/local/curl 			|
 |                    --with-pcre-regex=/usr/local/pcre 		|
 |									|
 |                    --with-mysql 					|
 |                    --with-pdo-mysql 					|
 |                    --with-mysqli=/usr/local/mysql/bin/mysql_config  	|
 |                    							|
 |                    --with-jpeg-dir=/usr/local/jpeglib 		|
 |                    --with-png-dir=/usr/local/pnglib 			|
 |                    --with-freetype-dir=/usr/local/freetype2lib 	|
 |                    							|
 |                    --enable-gd-native-ttf 				|
 |                    --with-zlib-dir=/usr/local/zlib (may be /usr/local|
 |                    --with-zlib=/usr/local/zlib (may me /usr/local)	|
 |									|
		      --enable-trans-id 				|
 |                    --with-gettext 					|
 |                    --enable-ftp 					|
 |                    --enable-mbstring (not necessarily)		|
 | #make -j 2								|
 | #make install							|
 | #make test //(not necessary)						|
 ------------------------------------------------------------------------

  You also can append your configure command
	       --with-pgsql[=DIR] 
		DIR is the PostgreSQL base install directory, defaults to /usr/local/pgsql. 	
               --with-pdo-pgsql[=DIR]  (for postresql installing), 
		where the optional [=DIR] is the PostgreSQL base install directory, or the path to pg_config.

               --with-curlwrappers
     	       --win-mysql-sock=/var/mysql/mysql.sock
	       --with-apache=/path/to/apache
               --with-bz2=[PATH] (/usr/local/bz2 or /usr/local)
  		
	      

 others
 -------
 
  you can install necessary libs in debian way
 ------------------------------------------------------------------------ 
 | $sudo apt-get install curl libcurl3 libcurl3-dev php5-curl php5-mcrypt |				
 ------------------------------------------------------------------------ 

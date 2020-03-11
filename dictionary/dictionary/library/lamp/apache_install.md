# apache install
to install apache run the 'configure' script:
```sh
$ sudo ./configure --prefix=/usr/local/
                   --enable-cache 
                   --enable-file-cache 
                   --enable-disk-cache
                   --enable-mem-cache
                   --enable-deflate
                   --enable-expires
                   --enable-headers 
                   --enable-usertrack 
                   --enable-ssl 
                   --with-ssl=/local/usr/openssl
                   --enable-cgi
                   --enable-vhost-alias 
                   --enable-rewrite 
                   --enable-so 
                   --with-pcre=/usr/local/pcre
                   --with-included-apr (not necessaryli)
                   --with-apr=/local/usr/apr
                   --with-apr-util=/usr/local/apr-util
```

you can use additional entries such as:
```sh
--enable-authn-anon 
--enable-v4-mapped 
--enable-authz-owner 
--enable-auth-digest 
--disable-imagemap 
--enable-dav 
--enable-dav-fs 
--enable-dav-lock       
--enable-info 
--enable-mime-magic 
--enable-proxy 
--enable-proxy-ajp 
--enable-proxy-http 
--enable-proxy-ftp 
--enable-proxy-balancer 
--enable-proxy-connect 
--enable-suexec 
--enable-rewrite            
--enable-userdir 	
--with-mpm=prefork 
```

to install a special port you can use:
```sh
--with-port=[PORT_NUMBER]
```


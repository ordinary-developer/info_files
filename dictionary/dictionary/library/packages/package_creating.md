# package creating

## useful sites
http://habrahabr.ru/post/130868/
http://habrahabr.ru/post/78094/
http://habrahabr.ru/post/78086/
http://habrahabr.ru/post/150210/


## a simple approach
in the source directory:
```sh
$ sudo make /usr/local/share/doc 
(need to create)
$ sudo autoreconf -i -f
$ sudo ./configure --prefix=/usr/local --exec-prefix=/usr/local
$ sudo checkinstall -D
$ sudo dkpg -i pocket_name.db
```


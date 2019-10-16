# apt config

to add info about sources add to file **/etc/apt/sources.list**
the next strings:
```
deb http://ftp.debian.org/debian/ stable main contrib
```

or the next strings:
```
deb http://ftp.us.debian.org/debian/ stable main non-free contrib    
deb-src http://ftp.us.debian.org/debian/ stable main non-free contrib
deb http://non-us.debian.org/debian/debian-non-US stable/non-US main 
    contrib non-free
deb-src http://non-us.debian.org/debian-non-US stable/non-US main
        contrib non-free     					|
deb http://security.debian.org/ stable/updates main contrib non-free
```
 
for Russia, for example, the server is 
```
ftp.ru.debian.org/debian
```

after that run:
```sh
$ sudo apt-get update
```

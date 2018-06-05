# monitor filesystem changes

## software installing

before installing type:
```sh
# find / | grep -v -e ^/proc -e ^/tmp -e ^/dev > joe_preinstall.list 
```

after installing type
```sh
# find / | grep -v -e ^/proc -e ^/tmp -e ^/dev > joe_postinstall.list
```

then type:
```sh
$ diff joe-preinstall.list joe-postinstall.list > joe-installed.list 
```

*Here the program joe was use*. 


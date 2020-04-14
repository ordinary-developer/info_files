# watch filesystem changes

## software installation
before installation type in the console:
```sh
# find / | grep -v -e ^/proc -e ^/tmp -e ^/dev > joe_preinstall.list 
```

after installation type in the console:
```sh
# find / | grep -v -e ^/proc -e ^/tmp -e ^/dev > joe_postinstall.list
```

then "make diffs":
```sh
$ diff joe-preinstall.list joe-postinstall.list > joe-installed.list 
```

*here the program "joe" was used* 


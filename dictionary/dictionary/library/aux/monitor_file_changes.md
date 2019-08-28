# monitor filesystem changes

## software installation
before installation:
```sh
# find / | grep -v -e ^/proc -e ^/tmp -e ^/dev > joe_preinstall.list 
```

after installation:
```sh
# find / | grep -v -e ^/proc -e ^/tmp -e ^/dev > joe_postinstall.list
```

then:
```sh
$ diff joe-preinstall.list joe-postinstall.list > joe-installed.list 
```

*here the program "joe" was used* 

# locale config
To see all locales
```sh
$ locale -a
```

to config ru_RU.utf8
1. type:
```sh
$ sudo apt-get install locales
```

then open the file '/etc/environment' and add the string:
```sh
LANG="ru_RU.UTF-8"
```

then edit the file '/etc/locale.gen'
and before the record 'ru_RU.UTF-8 UTF-8' delete the '#' sign

then run the command for a locale generation:
```sh
$ locale-gen
```

2. type:
```sh
$ dpkg-reconfigure locales
```

and select 'ru-RU.UTF-8'

3. in the file '/etc/default/locale' put:
```
LANG="en_US.UTF-8"
LANGUAGE="en_US.UTF-8"
```

4. type: 
```
$ sudo apt-get install locales-all
```


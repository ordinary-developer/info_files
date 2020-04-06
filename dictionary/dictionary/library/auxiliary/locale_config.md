# locale config

## base config
to see all locales type in the console:
```sh
$ locale -a
```

to config *ru_RU.utf8*:
1. type in the console:
   ```sh
   $ sudo apt-get install locales
   ```

   then open the file `/etc/environment` and add the string:
   ```
   LANG="ru_RU.UTF-8"
   ```

   then edit the file `/etc/locale.gen`
   and before the record "ru_RU.UTF-8 UTF-8" delete the "#" sign

   then type in the terminal the command for locale generation:
   ```sh
   $ locale-gen
   ```

2. type in the console:
   ```sh
   $ dpkg-reconfigure locales
   ```

   and select "ru-RU.UTF-8"

3. in the file `/etc/default/locale` add the next strings:
   ```
   LANG="en_US.UTF-8"
   LANGUAGE="en_US.UTF-8"
   ```

4. type in the console: 
   ```sh
   $ sudo apt-get install locales-all
   ```


## aux locale config
to configure locales you must type:
```sh
# dpkg-reconfigure locales
```

to configure cyrillic symbols in console type:
```sh
# dpkg-reconfigure console-cyrillic
```

to configure settings of console type:
```sh
# dpkg-reconfigure concole-setup 
```
of course, these packages must be already installed in the system

to configure alt-shift toggle between layouts print:
```sh
# setxkbmap "us,ru" -option "grp:alt_shift_toggle" 
```


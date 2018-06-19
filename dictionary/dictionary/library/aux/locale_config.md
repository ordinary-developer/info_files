# locale config

to configure locales you must type:
```sh
# dpkg-reconfigure locales
```

to configure cyrillic in console type:
```sh
# dpkg-reconfigure console-cyrillic
```

to configure settings of console type:
```sh
# dpkg-reconfigure concole-setup 
```
of course, these packages must be already installed in the system.

to configure alt-shift toggle between layouts print:
```sh
# setxkbmap "us,ru" -option "grp:alt_shift_toggle" 
```


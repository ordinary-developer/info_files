# locale config

To configure locales you must type
```sh
# dpkg-reconfigure locales
```

To configure cyrillic in console type
```sh
# dpkg-reconfigure console-cyrillic
```

To configure settings of console type
```sh
# dpkg-reconfigure concole-setup 
```
Of course, these packages must be already installed in the system.

To configure alt-shift toggle between layouts print
```sh
# setxkbmap "us,ru" -option "grp:alt_shift_toggle" 
```


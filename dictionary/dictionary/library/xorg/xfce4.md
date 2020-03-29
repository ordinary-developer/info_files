# xfce

to install xfce, type:
```sh
# apt-get install xfce4
```

you can also add additional packages:
```sh
# apt-get install xfce4-goodies
```
 
then, add to file `~/.xinit.rc`
```
exec ck-launch-session startxfce4
```

then you can start X with XFCE only by typing: 
```sh
startx
```

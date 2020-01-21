# alsa config 
to identify the model of the sound driver, in the file
`/etc/modprobe.d/alsa-base.conf` write (for my card):
```sh
... 
 options snd-hda intel model=auto 
``` 
 
to switch on the sound:
```sh
$ alasmixer 
```
and select in alsamixer "Front" and increment it

useful commands (in Debian):
```sh
$ sudo rm /var/lib/alsa/asound.state 
$ sudo aumix 
$ sudo alsactl store 
```


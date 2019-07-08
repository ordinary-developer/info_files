# alsa config 

to identify the model of the sound driver, in the file
`/etc/modprobe.d/alsa-base.conf` write something next (for my card):
```sh
.... 
 options snd-hda intel model=auto 
``` 
 
to switch on the sound type:
```sh
$ alasmixer 
```
and select in alsamixer "Front" in increment it

useful commands (in Debian):
```sh
$ sudo rm /var/lib/alsa/asound.state 
$ sudo aumix 
$ sudo alsactl store                    				|
```


# wifi config

## pre-install
to see your wifi devices:
```sh
$ lspci -nn | grep 0280
```

or (if your is Atheros (quacomm)):
```sh
$ lspci -nn | grep Atheros
```

to make wifi work correctly, first you must install your driver:
(in my case it is ath9k)
```sh
# apt-get install linux-headers build-essential
```

then you must get backports
extract them, and then enter the directory with backports
 
for configuring type
here you must point your driver:
```sh
# make oldconfig
# make menuconfig
```

or you can directly point your driver
```sh
# make defconfig-ath9k
```

after the you must type:
```sh
# make
# make install
```

sometimes it will be necessary to fix sources for correct compiling;
sometime it will be necessary to reboot your system


## install
to verify your installation type:
```sh
# ifconfig -a
```

you must see your new interface (wlan0 as usually),
then you must install the package wpasupplicant:
```sh
# apt-get install wpasupplicant
```

then we must generate a connection record:
```sh
# wpa_passphrase router_name router_password
```

you will receive something like that:
```
network={
  ssid="TP-LINK_985188"	
  psk=b8530ddba3a3625b9336be805da8cfb5f2d67d0e776d5ffd2f38b3f11b18a404	|
}
```

then we must add this record to the file (if it doesn't exist, create it):
```
/etc/wpa_supplicant/wpa_supplicant.conf
```


## connection
to connect to the internet via wifi type:
```sh
$ wpa_supplicant -D wext -i wlan0 
                 -c /etc/wpa_supplicant/wpa_supplicant.conf -B
```

then you must config your network;
if you receive your address automatically type:
```sh
# dhclient wlan0
```

else you must print:
```sh
# ifconfig wlan0 ip-address netmask
```

and then we must add a gate (not necessarily):
```sh
# route add default gw 192.168.1.1
```

( 192.168.1.1 - usuall address for router, if the address is other
 you must type it)


# nec config

## base config
to configure network write next strings in file '/etc/network/interafces'

- for dhcp configuring
```
#The loopback network interface 
auto lo                         
iface lo inet loopback         
 
#The primary network interface
allow-hotplug eth0 
iface eth0 inet dhcp
```

but dhcp configuring sometimes doesn't work, so it is necessary to configure
 the same file to get static ip 
 
but internet can be very small, (perphaps from incorrect DNS configuration)
so, type in file /etc/resolv.conf
```
 nameserver   x.x.x.x 
```
where x.x.x.x - the address of your DNS server
  
```
#The loopback network interface 
auto loa 
iface lo inet loopback 

#The primary network interface
allow-hotplug eth0 
iface eth0 inet static 
address 10.88.8.228
netmask 255.255.254.0 
subnet 
broadcast 
gateway 10.88.8.1 
```
 
it is necessary to write next strings into file '/etc/resolv.conf'
```
domain kursk.puzzle.su 
search kursk.puzzle.su 
nameserver 176.194.192.1 
nameserver 212.1.224.6 
nameserver 212.1.244.6
nameserver 8.8.8.8
```


## aux info
but sometimes these settings do not work
so it is necessary to type next command
```sh
# dhclient eth0
```

this command will get the ip address by dhcp protocol,but sometimes 
it also don't work so it is necessary to type another 2 commands
```sh
# ifconfig eth0 10.20.3.58 netmask 255.255.248.0 broadcast 10.20.7.255
# route add default gw 10.20.0.3 eth0
```

to set manually loopback interface type next command:
```sh
# ifconfig lo 127.0.0.1
```

You can also add some string about your dns to your file for 
your internet speed increasing:
```sh
/etc/network/interfaces 
```

these strings are:
```sh
dns-nameservers 91.226.116.132 8.8.8.8
dns-search kstu.kursk.ru               
```


## useful commands
some useful commands to work with interfaces:
 
- to set up an interface: 
```sh
# ifup eth0
```

- to set down interface: 
```sh
# ifdown eth0
```

- to restart network services:
```sh
# /etc/init.d/networking stop
# /etc/init.d/networking start
```
or 
```sh
# /etc/init.d/networking restart
```

- to see the state of interfaces:
```sh
# ifconfig
```

- to ping some host
```sh
$ ping www.yandex.ru -c 3
```

- to see routing:
```sh
# route
# route -n
```

- to see routing by another commnad:
```sh
# netstat -r 
```

- to DNS servers you can see the next file:
```
/etc/resolv.conf
```

- to see messages of the kernel about interfaces:
```sh
# dmesg | grep eth 
```

- to see information about network adapter in device list:
```sh
# lspci | grep ether
# lspci | grep Ether 
```
 

## addition info
some useful knowledge for net in Debian
 
/etc/hosts - the list of all ip-addresses and names
/etc/resolv.conf - contains DNS servers
/etc/network/interfaces - describing of network interfaces
/proc/sys/net/ipv4/ip_forward - the file for switching on routing between interfaces

To switch on the routing between interfaces (for switch on NAT) type:
```sh
# echo '1'>/proc/sys/net/ipv4/ip_forward
```

for assigning auxilary address for eth type:
```sh
# ifconfig eth0:0 172.16.0.1 netmask 255.255.255.0
```

to temporaly change MAC type:
```sh
# ifconfig eth0 hw ether 00:01:02:03:04:05 
```

to change MAC permanently, type if file /etc/net/interfaces:
```
....
pre-up ifconfig eth0 hw ether 00:01:02:03:04:05
```

to see the fixed card and its mac you can in file:
```sh
/etc/udev/rules.d/70-persistent-net.rules
```


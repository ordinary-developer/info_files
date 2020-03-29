# pppoe config
to config pppoe you follow the next steps:

1. in the /etc/network/interfaces must be
```
auto eth0
iface eth0 inet dhcp
```

2. install pppoeconf
```
sudo apt-get update && sudo apt-get install pppoeconf
```

3. launch pppoeconf from the root
```
sudo pppoeconf
```

4. answer that always keep connection (not necessary)
i will promt to enter the name of connection , enter it.

then you can start the connection
```
sudo pon connection-name
```

and stop it

```
sudo pon connection-name
```

5. if doesnt work

in /etc/rc.local before the string "exit 0" add:
```
ip link set dev eth0 up
pon dsl-provider
```

To add your dns-server , add every server in a separate line in the file /etc/resolv.conf
for example
```
nameserver 8.8.8.8
```


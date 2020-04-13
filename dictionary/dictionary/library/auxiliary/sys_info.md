# system info
assuming that all further commands are typed in the console

## memory
common info:
```sh
$ cat /proc/meminfo 
$ less /proc/meminfo
```

free memory info:
```sh
$ free
$ free -m
$ free -mt
$ free -gt
```

process info:
```sh
$ top 
```
or 
```sh
$ ps -aux 
```

process with a specified pid info:
```sh
$ pmap -d <pidnumber>
```

tree for processes:
```sh
$ pstree
```


## cpu
```sh
$ cat /proc/cpuinfo
$ lscpu
```


## distrib and credentials
linux kernel info:
```sh
$ cat /proc/version
$ uname -mrs
$ uname -a
```

linux distrib info:
```sh
$ lsb_release -a
$ cat /etc/<release>
```

user info:
```sh
$ id <username> 
```

system uptime info:
```sh
$ uptime 
```

system loading info:
```sh
$ dmesg
```


## pci
```sh
$ lspci
```


## usb
```sh
$ lsusb
``` 


## block devices
```sh
$ lsblk
```


## hard drives
disk info:
```sh
$ fdisk -l
```

disk usage info:
```sh
$ du -hs /home
```

free space info:
```sh
$ df -h
```


## hardware
```sh
$ dmidecode | less
$ lshw
```


## drivers
info about core modules in memory:
```sh
lsmod
```


## net
ip routes info:
```sh
$ ip route show
```

open tcp and udp ports info:
```sh
$ netstat -a
$ netstat -apn | grep 80
```


## aux net cmds
to scan all hosts for open ports:
```sh
$ nmap 192.168.1.1
```

to scan all hosts:
```sh
$ nmap -sP 192.168.1.1-200 
```

to scan all the net on the port 23 and showing where it is open:
```sh
$ nmap -n -p 23 10.0.0.1-254 | grep open -A 2 -B 3
```


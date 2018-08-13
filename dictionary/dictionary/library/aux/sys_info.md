# system info

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

info about processes:
```sh
$ top 
```

tree for processes:
```sh
$ pstree
```

info about processes:
```sh
$ ps -aux
```

info about the process with the specified pid:
```sh
$ pmap -d <pidnumber>
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
$ cat /etc/*release*
```

info about user:
```sh
$ id <username> 
```

info about system uptime:
```sh
$ uptime 
```

system loading info:
```sh
$ dmesg (system loading information)
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
info about disks:
```sh
$ fdisk -l
```

info about disk usage:
```sh
$ du -hs /home
```

info about free space:
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
info about ip routes:
```sh
$ ip route show
```

info about open tcp and udp ports:
```sh
$ netstat -a
$ netstat -apn | grep 80
```

scanning all hosts for open ports:
```sh
$ nmap 192.168.1.1
```

scanning all hosts:
```sh
$ nmap -sP 192.168.1.1-200 
```

scanning all the net on the port 23 and showing where it is open:
```sh
$ nmap -n -p 23 10.0.0.1-254 | grep open -A 2 -B 3
```

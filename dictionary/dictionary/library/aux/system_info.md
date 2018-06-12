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

process info:
```sh
# info about processes
$ top 

# tree for processes
$ pstree

# info about processes
$ ps -aux

# info about the process with the specified pid
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

info about disk usage
```sh
$ du -hs /home
```

info about free space:
```sh
$ df -h
```


 ALL HARDWARE
 ------------
 ------------------------------------------------------------------------
 | $ dmidecode | less							|
 | $ lshw								|
 ------------------------------------------------------------------------


 DRIVERS
 --------
 ------------------------------------------------------------------------
 | lsmod (for core modules in memory)					|
 ------------------------------------------------------------------------


 NET
 ---
 ------------------------------------------------------------------------ 
 | ip route show (info about ip routes)					|
 | netstat -a (show open tcp and udp ports)				|
 | netstat -apn | grep 80						|
 | nmap 192.168.1.1 (scan all hosts for open ports)			|
 | nmap -sP 192.168.1.1-200 (scan all hosts)				|
 | nmap -n -p 23 10.0.0.1-254 | grep open -A 2 -B 3 			|
 |                  (scan all set on port 23 and show  where it is open)|
 ------------------------------------------------------------------------ 

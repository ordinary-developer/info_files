# nect config

 base config
 ===========

 To configure network it is necessary write next strings in file
  ------------------------------------------------------------------------
 | /etc/network/interfaces     						 |
 -------------------------------------------------------------------------

 - for dhcp configuring
 -------------------------------------------------------------------------
 | #The loopback network interface    					 |
 | auto lo                            					 |
 | iface lo inet loopback             					 |
 |                                    					 |
 | #The primary network interface     					 |
 | allow-hotplug eth0                 					 |
 | iface eth0 inet dhcp               					 |
 -------------------------------------------------------------------------

 But dhcp configuring sometimes doesn't work, so it is necessary to configure
 the same file to get static ip 
 -------------------------------------------------------------------------
 | /etc/network/interfaces           					 |
 -------------------------------------------------------------------------
 
 But internet can be very small, (perphaps from incorrect DNS configuration)
 so, type in file /etc/resolv.conf
 -------------------------------------------------------------------------
 | nameserver   x.x.x.x               					 |
 | ...                                					 |
 -------------------------------------------------------------------------
 Where x.x.x.x - the address of your DNS server
  
 -------------------------------------------------------------------------
 | #The loopback network interface   					 |
 | auto loa                          					 |
 | iface lo inet loopback            					 |
 |                                   					 |
 | #The primary network interface    					 |
 | allow-hotplug eth0                					 |
 | iface eth0 inet static            					 |
 | address 10.88.8.228               					 |
 | netmask 255.255.254.0             					 |
 | subnet                            					 |
 | broadcast                         					 |
 | gateway 10.88.8.1                 					 |
 -------------------------------------------------------------------------
 
 It is necessary to write next strings into file
 -------------------------------------------------------------------------
 | /etc/resolv.conf          						 |
 -------------------------------------------------------------------------

 -------------------------------------------------------------------------
 | domain kursk.puzzle.su                                                |
 | search kursk.puzzle.su                                                |
 | nameserver 176.194.192.1  						 |
 | nameserver 212.1.224.6    						 |
 | nameserver 212.1.244.6						 |
 | nameserver 8.8.8.8							 |
 -------------------------------------------------------------------------

 auxiliary info
 --------------
 
 but sometimes these settings do not work
 so it is necessary to type next command
 -------------------------------------------------------------------------
 | #dhclient eth0             						 |
 -------------------------------------------------------------------------

 this command will get the ip address by dhcp protocol,but sometimes 
 it also don't work so it is necessary to type another 2 commands
 -------------------------------------------------------------------------
 | #ifconfig eth0 10.20.3.58 netmask 255.255.248.0 broadcast 10.20.7.255 | 
 | #route add default gw 10.20.0.3 eth0                                  |
 -------------------------------------------------------------------------

 to set manually loopback interface type next command
 -------------------------------------------------------------------------
 | #ifconfig lo 127.0.0.1          					 |
 -------------------------------------------------------------------------

 You can also add some string about your dns to your file for 
 your internet speed increasing
  ------------------------------------------------------------------------
 | /etc/network/interfaces   						 |
 -------------------------------------------------------------------------
 these strings are
 -------------------------------------------------------------------------
 | dns-nameservers 91.226.116.132 8.8.8.8  				 |
 | dns-search kstu.kursk.ru                				 |
 -------------------------------------------------------------------------

 useful commands
 ---------------

 Some useful commands to work with interfaces
 
 to set up an interface 
 -------------------------------------------------------------------------
 | #ifup eth0              						 |
 -------------------------------------------------------------------------
 to set down interface 
 -------------------------------------------------------------------------
 | #ifdown eth0								 |
 -------------------------------------------------------------------------
 to restart network services
 -------------------------------------------------------------------------
 | #/etc/init.d/networking stop     					 |
 | #/etc/init.d/networking start    					 |
 -------------------------------------------------------------------------
 or 
 -------------------------------------------------------------------------
 | #/etc/init.d/networking restart  					 |
 -------------------------------------------------------------------------
 to see the state of interfaces
 -------------------------------------------------------------------------
 | #ifconfig           							 |
 -------------------------------------------------------------------------
 to ping some host
 -------------------------------------------------------------------------
 | $ping www.yandex.ru -c 3  						 |
 -------------------------------------------------------------------------

 to see routing
 -------------------------------------------------------------------------
 | #route                    						 |
 | #route -n                 						 |
 -------------------------------------------------------------------------	

 to see routing by another commnad
 -------------------------------------------------------------------------
 | #netstat -r              						 |
 -------------------------------------------------------------------------

 to DNS servers you can see the next file
 -------------------------------------------------------------------------
 | /etc/resolv.conf							 |
 -------------------------------------------------------------------------

 to see messages of the kernel about interfaces
 -------------------------------------------------------------------------
 | #dmesg | grep eth       						 |
 -------------------------------------------------------------------------

 to see information about network adapter in device list 
 -------------------------------------------------------------------------
 | #lspci | grep ether      						 |	 
 | #lspci | grep Ether      						 |	 
 -------------------------------------------------------------------------
 
 addition info
 -------------
 Some useful knowledge for net in Debian
 
 /etc/hosts - the list of all ip-addresses and names
 /etc/resolv.conf - contains DNS servers
 /etc/network/interfaces - describing of network interfaces
 /proc/sys/net/ipv4/ip_forward - the file for switching on routing between interfaces
 To switch on the routing between interfaces (for switch on NAT)  type
 -------------------------------------------------------------------------
 |  #echo '1'>/proc/sys/net/ipv4/ip_forward   				 |
 -------------------------------------------------------------------------

 for assigning auxilary address for eth type
  ------------------------------------------------------------------------
 | #ifconfig eth0:0 172.16.0.1 netmask 255.255.255.0 			 |
  ------------------------------------------------------------------------
 to temporaly change MAC type
 -------------------------------------------------------------------------
 | #ifconfig eth0 hw ether 00:01:02:03:04:05         			 |
 -------------------------------------------------------------------------
 to change MAC permanently, type if file /etc/net/interfaces
 -------------------------------------------------------------------------
 | ....                                                			 |
 | pre-up ifconfig eth0 hw ether 00:01:02:03:04:05     			 |
 -------------------------------------------------------------------------

 to see the fixed card and its mac you can in file
 -------------------------------------------------------------------------
 | /etc/udev/rules.d/70-persistent-net.rules            		 |
 -------------------------------------------------------------------------

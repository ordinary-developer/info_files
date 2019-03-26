# wifi config

## pre-install
 to see your wifi device
 ------------------------------------------------------------------------
 | $ lspci -nn | grep 0280						|
 ------------------------------------------------------------------------
 or (if your is Atheros (quacomm))
 ------------------------------------------------------------------------
 | $ lspci -nn | grep Atheros						|
 ------------------------------------------------------------------------

 to make wifi work correctly, first you must install your driver 
 (in my case it is ath9k)
 ------------------------------------------------------------------------
 | # apt-get install linux-headers build-essential			|
 ------------------------------------------------------------------------

 Then you must get backports
 extract them, and then enter the directory with backports
 
 for configuring type
 Here you must point your driver
 ------------------------------------------------------------------------ 
 | # make oldconfig							|
 | # make menuconfig							|
 ------------------------------------------------------------------------ 

 Or you can directly point your driver
 ------------------------------------------------------------------------ 
 | # make defconfig-ath9k						|
 ------------------------------------------------------------------------ 

 After the you must type
 ------------------------------------------------------------------------ 
 | # make								|
 | # make install							|
 ------------------------------------------------------------------------ 

 Sometimes it will be necessary to fix sources for correct compiling.
 Sometime it will be necessary to reboot your system.

 installation
 ------------
 to verify your installation type
 ------------------------------------------------------------------------ 
 | # ifconfig -a							|
 ------------------------------------------------------------------------

 You must see your new interface (wlan0 as usually)

 Then you must install the package wpasupplicant
 ------------------------------------------------------------------------
 | # apt-get install wpasupplicant					|
 ------------------------------------------------------------------------

 Then we must generate a connection record
 ------------------------------------------------------------------------
 | # wpa_passphrase router_name router_password				|
 ------------------------------------------------------------------------

 You will receive something like that
 ------------------------------------------------------------------------
 | network={								|
 | ssid="TP-LINK_985188"						|
 | psk=b8530ddba3a3625b9336be805da8cfb5f2d67d0e776d5ffd2f38b3f11b18a404	|
 | }									|
 ------------------------------------------------------------------------

 Then we must add this record to the file (if it doesn't exist, create it)
 ------------------------------------------------------------------------	
 | /etc/wpa_supplicant/wpa_supplicant.conf 				|
 ------------------------------------------------------------------------	

 connection
 ----------
 
 to connect to the internet via wifi type
 ------------------------------------------------------------------------	
 | $ wpa_supplicant -D wext -i wlan0 					|
 |                  -c /etc/wpa_supplicant/wpa_supplicant.conf -B	|
 ------------------------------------------------------------------------	

 Then you must config your network.
 If you receive your address automatically type
 ------------------------------------------------------------------------	
 | # dhclient wlan0							|
 ------------------------------------------------------------------------

 else you must print
 ------------------------------------------------------------------------
 | # ifconfig wlan0 ip-address netmask					|
 ------------------------------------------------------------------------

 and then we must add a gate (not necessarily)
 ------------------------------------------------------------------------
 | # route add default gw 192.168.1.1					|
 ------------------------------------------------------------------------
 ( 192.168.1.1 - usuall address for router, if the address is other
  you must type it)

 alternative installation
 ------------------------

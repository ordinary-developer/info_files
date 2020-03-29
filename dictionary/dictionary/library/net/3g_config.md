# 3g config
first you must install minicom (for sending commands to the modem):
```sh
$ sudo apt-get install minicom
```

to work with the modem type:
```sh
$ sudo minicom -s
```

then it is necessary 
- select the item "nastroyka posledovatelnogo porta";
- press the key "A";
- we must have "/dev/ttyUSB1";
- press Enter.

ater saving
- select the item "Vyhod"
- type 'ati0'


the result must be the following
```
Manufacturer: ZTE INCORPORATED
Model: MF100
Revision: BD_BLNP671A1V1.0.0B02
IMEI: 12345678901234	
+GCAP: +CGSM,+FCLASS,+DS
 
OK
```


then you must copy the next command to the minicom console
for switch off the flag "NODOWNLOAD.FLG"
```sh
echo -e «AT+ZCDRUN=E\r\n» > /dev/ttyUSB1
```

for switch off the flag AUTORUN.FLG
```sh
echo -e «AT+ZCDRUN=8\r\n» > /dev/ttyUSB1
```


the answer must be:
```
Enter download mode result(0:FAIL 1:SUCCESS):1
```
then
- press CTRL-A
- press Q
- select "Da"



to turn on cd-mode again type in minicom console:
for switch on the flag "NODOWNLOAD.FLG"
```sh
AT+ZCDRUN=F\r\n
```

for switch on the flag "AUTORUN.FLG":
```sh
AT+ZCDRUN=9\r\n
```


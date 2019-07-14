#sudo config

## base config
to install sudo:
```sh
#apt-get install sudo 
```

then in the file */etc/sudoers* write:
```sh
%sudo ALL=(ALL) ALL 
ivan ALL=(ALL) ALL    
```

 
## my `/etc/sudoers` file contents:
```
%sudo ALL = (ALL) ALL 
ivan  ALL = (ALL) NOPASSWD: ALL  
```


## common info
a typical configuration line can be the next:
```
username hostname=(by_what_user) commandlist  
```

examples are:
- ivan can perform by root on any host the command `more /var/log/messages`
  ```
  ivan ALL=/bin/more /var/log/messages
  ```

- ivan can perform by <username> on only server command 'sudo -u username
/bin/ls /home/username'
```
ivan server=(username) /bin/ls /home/username 
```


## aux info
the string:
```
Defaults env_reset 
```
in the file `/etc/sudoers` says
that all user variables (HOME,PATH etc.) (for a concrete user) are forbided,
only root variables are availiable,
security level is higher, 
but sometimes it can be some prombles with compatibility.

if it is necessary to add such a feature you can write in the config file:
```
Defaults: %admin !env_reset 
```
where is 'admin' - is the group for which you want to add some priviledges
and '!env_reset' allows to use user varialbes

you also can write something following:
```
Defaults: user env_keep=TZ 
```
where 'user' - is the name of user
'env_keep=TZ' allow to use TZ variable for this user


the next string allow to use sudo for the command `/bin/kill` without the password:
```
user mycomp= NOPASSWD: /bin/kill 
```

sometimes for launching X-programs you must write:
```
Defaults env_check+="HOME DISPLAY"
Defaults env_keep+="HOME DISPLAY"  
Defaults env_reset                  
```

next, the string: 
```
Defaults: user timestamp_timeout=0 
```
allows not to remember the password for the user `user`
and so user must all times enter his password;

sometimes it is usefull to use aliaces:
```
Cmnd_Alias command_alias=command1,2....
Host_Alias host_alias=hostname1,2.... 
User_alias user_alias=user1,2,...      
```
 
commands in file `/etc/sudoers` can be represented by follow:
```
user host=command        
```

for example for all users:
```
user ALL=/bin/mount,/bin/kill
```

for group admin you can write:
```
%admin ALL=(ALL) ALL 
```
 
## my more elaborate `/etc/sudoers`
```
Defaults env_check+="HOME DISPLAY"
Defaults env_keep+="HOME DISPLAY"
Defaults env_reset
%sudo ALL=(ALL) ALL                     
ivan ALL=(ALL) ALL                       
```

the format of the config file is following:
```
user	host = (user)	command
ivan	ALL  = (ALL)    ALL
```


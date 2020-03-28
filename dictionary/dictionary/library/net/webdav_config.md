# webdav config

## fs package installation 
to allow to mount webdav as a folder, install the *devfs2* package:
```sh
$ sudo apt-get install davfs2
```


## common mounting scenario
to mount an arbitrary cloud disk  as local folder:

1. create the local folder:
```sh
$ mkdir ~/mnt/cloud/disk
```

2. mount it:
```sh
$ sudo mount -t davfs 
    https://address_to_webdav /home/your_user/mnt/cloud/disk
``` 

or (with more options):
```sh
$ sudo mount -t davfs -o uid=1000,gid=1000
    https://address_to_webdav /home/your_user/mnt/cloud/disk
``` 

3. enter your *username* (usually you email) and your *passwd*

4. verify the mounting status (not necessarily):
```sh
$ df -h ~/mnt/cloud/disk
```


## yandex.disk
1. create a local folder:
```sh
$ mkdir ~/mnt/cloud/yandex.disk
```

2. mount it:
```sh
$ sudo mount -t davfs 
  https://webdav.yandex.ru /home/your_user/mnt/cloud/yandex.disk
``` 

or (with more options):
```sh
$ sudo mount -t davfs -o uid=1000,gid=1000
    https://webdav.yandex.ru /home/your_user/mnt/cloud/yandex.disk
```

3. enter your *username* (usually you email) and your *passwd*
4. verify the mounting status (not necessarily):
```sh
$ df -h ~/mnt/cloud/yandex.disk
```


## onedrive (ex. skydrive) webdav
1. create a local folder:
```sh
$ mkdir ~/mnt/cloud/onedrive.disk
```

2. mount it:
```sh
$ sudo mount -t davfs 
    https://d.docs.live.net/<YOUR_CID> /home/your_user/mnt/cloud/onedrive.disk
``` 
or (with more options):
```sh
$ sudo mount -t davfs -o uid=1000,gid=1000
    https://d.docs.live.net/<YOUR_CID> /home/your_user/mnt/cloud/onedrive.disk
```

3. enter your *username* (usually you email) and your *passwd*

4. verify the mounting status (not necessarily):
```sh
$ df -h ~/mnt/cloud/onedrive.disk
```


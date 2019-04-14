# aptitude

## common info
the file **/etc/apt/sources.list** contains data about packages to install.

this command updates the package repository:
```sh
$ aptitude update
```

this command will install package with name "package":
```sh
$ aptitude install package 
```

this command will remove package with name "package":
```sh
$ aptitude remove package 
```

this command will remove package with name "package" and also
will delete all configurational files:
```sh
$ aptitude purge package 
```
 
a cache of already downloaded packages is stored in directory
**/var/cache/apt/archives/** 

to clean this directory you can use two commands:
- this command entirely cleans this directory
```sh
$ aptitude clean
```

- this command removes only packages which cannot be downloaded:
```sh
$ aptitude autoclean
```

this command looks for installed packages which can be upgrated 
and upgrade them:
```sh
$ aptitude safe-updade 
```

this command looks for installed packages which can be upgrated 
and upgrade them.
this command will change from one major Debian version to next:
```sh
$ aptitude full-upgrade
```

the next directory **/var/lib/apt/lists** 
contains information about available packages

the two next commands display informatio about the package
with a name 'package_name':
```sh
$ aptitude search package
```

```sh
$ aptitude show package
```

the aptitud keeps a trace of executed actions in its logfile: **/var/log/aptitude**


## records in sources.list
```
...
    deb http://ftp.debian.org/debian/ wheezy main contrib
    //deb http://ftp.debian.org/debian/ stable main contrib
```


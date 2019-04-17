# dpkg

## useful commands
this command will install package_name.deb package 
(attention: package must be in the same folder):
```sh
$ dpkg --install package_name.deb
```

Simply installing process can be reduced to 2 manual actions: 
unpacking and configuring. 
this command will unpack the package:
```sh
$ dpkg --unpack package_name.deb
```

this command will configure the package:
```sh
$ dpkg --configure package_name
```

this command will remove package with  name package_name;
but configuration files will stay in the system:
```sh
$ dpkg --remove package_name
```

this command will remove the package and it's config files:
```sh
$ dpkg --purge package_name
```

sometimes it is useful to use --force option

this command displays the list of packages known to the system and their
installation status
```sh
$ dpkg --list
```

this command lists the files installed by this package (package_name):
```sh
$ dpkg --listfiles package_name
```

this command finds from which the file with 'file_name' comes:
```sh
$ dpkg --search file_name
```

this command displays the headers of an installed package with name
'installed_package' 
```sh
$ dpkg --status installed_package
```

this command lists the files in the package with name 'file.deb':
```sh
$ dpkg --contents file.deb
```

this command displays the headers of Debian package:
```sh
$ dpkg --info file.deb 
```


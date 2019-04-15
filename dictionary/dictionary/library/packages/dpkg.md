# dpkg

 useful commands
 ===============

 This command will install package_name.deb package 
 (attention: package must be in the same folder)
 ------------------------------------------------------------------------
 | dpkg --install package_name.deb 					|
 ------------------------------------------------------------------------

 Simpely installing process can be reduced to 2 manual actions: 
 unpacking and configuring. 
 This command will unpack the package
 ------------------------------------------------------------------------
 | dpkg --unpack package_name.deb  					|
 ------------------------------------------------------------------------
 This command will configure the package
 ------------------------------------------------------------------------
 | dpkg --configure package_name   					|	 
 ------------------------------------------------------------------------

 This command will remove package with  name package_name.
 But configuration files will stay in the system
 ------------------------------------------------------------------------
 | dpkg --remove package_name        					|
 ------------------------------------------------------------------------

 This command will remove the package and it's config files  
 ------------------------------------------------------------------------
 | dpkg --purge package_name        					|
 ------------------------------------------------------------------------

 Sometimes it is useful to use --force option

 This command displays the list of packages known to the system and their
 installation status
 ------------------------------------------------------------------------
 | dpkg --list                      					|
 ------------------------------------------------------------------------

 This command lists the files installed by this package (package_name)
 ------------------------------------------------------------------------
 | dpkg --listfiles package_name  					|
 ------------------------------------------------------------------------

 This command finds from which the file with 'file_name' comes 
 ------------------------------------------------------------------------
 | dpkg --search file_name          					|
 ------------------------------------------------------------------------

 This command displays the headers of an installed package with name
 'installed_package' 
 ------------------------------------------------------------------------
 | dpkg --status installed_package    					|
 ------------------------------------------------------------------------

 This command lists the files in the package with name 'file.deb'
 ------------------------------------------------------------------------
 | dpkg --contents file.deb         					|
 ------------------------------------------------------------------------

 This command displays the headers of Debian package
 ------------------------------------------------------------------------
 | dpkg --info file.deb            					|
 ------------------------------------------------------------------------


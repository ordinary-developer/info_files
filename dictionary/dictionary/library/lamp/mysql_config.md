# MySQL config

## script config
Enter the mysql directory (usually /usr/local/mysql)

You can turn your mysql by script or manually.
We must consider both two variants

run your script:
(remember, you must run your server)
```sh
$ sudo bin/mysql_secure_installation
```

your answers will be:
1. Skip root passwowrd for root
   simply press enter (you have no your root passowrd yes)
2. Install a new password ro for root [y/n]
   y
3. Do remove an anonymous user [y/n]
   y
4. Do not disallow remote connections [y/n]
   y
5. do remove a test database [y/n]
   y
6. Do reload the privileges [y/n]
   y


## manual config
Enter the mysql base directory you can find it by the next command:
```sh
$ sudo mysqld --verbose --help 
```

and the find the word basedir
the word datadir shows your paths to databases
 

 root config
 -----------
 we must update root password
 -------------------------------------------------------------------------
 | $ mysql -uroot -pyour_password					 |
 -------------------------------------------------------------------------

 Then type
 ------------------------------------------------------------------------
 | mysql> USE mysql;					    		|
 | mysql> UPDATE user SET Password=PASSWORD('new_password)'  		|
 |        WHERE user='root'				    		|
 | mysql> FLUSH PRIVILEGES;           		    			|
 ------------------------------------------------------------------------
 or you can type
 ------------------------------------------------------------------------
 | mysql> SET PASSWORD FOR 'root'@'localhost' = PASSWORD('security');   |
 | mysql> SET PASSWORD FOR 'root'@'localhost.localdomain' 		|
 |		= PASSWORD('security');   				|
 | mysql> SET PASSWORD FOR 'root'@'127.0.0.1' = PASSWORD('security');   |
 ------------------------------------------------------------------------

 for creating a new user from localhost you can type 
 (you must be in your mysql database)
 ------------------------------------------------------------------------
 | mysql> CREATE USER 'project_user'@'localhost' 			|
 |        IDENTIFIED BY 'some_pass';					|
 ------------------------------------------------------------------------
 
 for creating a new user from any host you can type
 (you must be in your mysql database)
 ------------------------------------------------------------------------
 | mysql> CREATE USER 'project_user'@'%' IDENTIFIED BY 'some_pass'	|
 ------------------------------------------------------------------------

   then you can use grant to add prvisegies
 ------------------------------------------------------------------------
 | mysql> GRANT ALL PRIVILEGES ON *.* TO admin@localhost   		|
 | mysql> IDENTIFIED BY 'some_password' WITH GRANT OPTION  		|
 ------------------------------------------------------------------------
 user admin can connect only from localhost and can do everything

 for connecting from other hosts type
   
 ------------------------------------------------------------------------
 | mysql> GRANT ALL PRIVILEGES ON *.* TO admin@"%"         		|
 | mysql> IDENTIFIED BY 'some_password' WITH GRANT OPTION  		|
 ------------------------------------------------------------------------

 for advanced user you can type
 ------------------------------------------------------------------------
 | mysql> GRANT SELECT, INSERT, UPDATE, DELETE, INDEX, CREATE, DROP	| 
 |        ON *.* TO 'project_user'@'%' IDENTIFIED BY 'user_password' 	|
 |        WITH GRANT OPTION						|
 ------------------------------------------------------------------------


 Anonymous config
 ----------------
 (you must be in "mysql" database)
 you can set a password for anonymous account
 ------------------------------------------------------------------------
 | mysql> UPDATE user SET Password = PASSWORD('new_password')      	|
 |        WHERE User = '';                                              |
  -----------------------------------------------------------------------
 or you can
 ------------------------------------------------------------------------
 | mysql> SET PASSWORD FOR ''@'localhost' = PASSWORD('newpwd');   	| 
 |  mysql> SET PASSWORD FOR ''@'host_name' = PASSWORD('newpwd');  	|
 ------------------------------------------------------------------------

    you can drop your anonymous user 
 ------------------------------------------------------------------------
 | mysql> DROP USER ''@'localhost';	            			|
 | mysql> DROP USER ''@'localhost.localdomain';   			|
 | mysql> DROP USER ''@'host_name';               			|
 ------------------------------------------------------------------------


 Securing database
 -----------------
 Secure test database
 ------------------------------------------------------------------------
 | $ mysql -u root -p					    		|
 | mysql> DELETE FROM mysql.db WHERE Db LIKE 'test%';	    		|
 | mysql> FLUSH PRIVILEGES;				    		|
 ------------------------------------------------------------------------

 You can drope your test database 
 ------------------------------------------------------------------------
 | mysql> DROP DATABASE test;						|
 ------------------------------------------------------------------------
 

  
 file config
 -----------
 edit file /etc/my.cnf and edit codepage
 ------------------------------------------------------------------------
 | [mysqld]							  	|
 | init_connect = 'SET collation_connection = utf8_unicode_ci'   	|
 | character-set-server = utf8					  	|
 | collation-server = utf8_unicode_ci				  	|
 |								  	|
 | [client] 							  	| 
 | default-character-set = utf8				  		|
  -----------------------------------------------------------------------

 /etc/my.cnf
 -------------
 [client]
 port = 3306
 socket = /tmp/mysql.sock
 [mysqld]
 port = 3306
 socket = /tmp/mysql.sock
 skip-locking
 key_buffer = 16K
 max_allowed_packet = 1M
 table_cache = 4
 sort_buffer_size = 64K
 net_buffer_length = 2K
 thread_stack = 64K
 skip-networking
 server-id = 1
 [mysqldump]
 quick
 max_allowed_packet = 16M
 [mysql]
 no-auto-rehash
 [isamchk]
 key_buffer = 8M
 sort_buffer_size = 8M
 [myisamchk]
 key_buffer = 8M
 sort_buffer_size = 8M
 [mysqlhotcopy]
 interactive-timeout

 
 other
 -----
 You can config your IPv6 locahost(@::1) (you must be in mysql database)
 ------------------------------------------------------------------------
 | mysql> SET PASSWORD FOR 'root'@'::1 = PASSWORD(<password>);  	|
 ------------------------------------------------------------------------

 opening ports
 ------------------------------------------------------------------------
 | $ sudo iptables -I INPUT -p tcp --dport 3306 -m state 		|
 |                 --state NEW,ESTABLISHED -j ACCEPT  			|
 | $ sudo iptables -I OUTPUT -p tcp --sport 3306 -m state 		|
 |                 --state ESTABLISHED -j ACCEPT    			|
 ------------------------------------------------------------------------

   

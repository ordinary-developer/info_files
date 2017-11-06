 ############################
 APACHE CONFIG
 ############################

 openssl
 -------
 create key
  
 Create a private key and place it into directory /home/ssl:
 ------------------------------------------------------------------------
 | $mkdir /home/ssl							|
 | $cd /home/ssl							|
 | $/usr/local/openssl/bin/openssl genrsa -des3 -rand			|
 |	  			   some_big_file_1:some_big_file_2 	|
 |				  -out localhost.key 1024		|
 ------------------------------------------------------------------------
 Then you must enter your password phrase (you must REMEMBER it)

 Next, we will create a private key without a pass-phrase, this is less secure, 
 but it allows us to bootup the server without manually entering the pass-phrase every time…
 ------------------------------------------------------------------------
 | $/usr/local/openssl/bin/openssl rsa 					|
 |   			           -in localhost.key 			|
 |				   -out localhost.key.unsecure		|
 ------------------------------------------------------------------------
 Then you must again enter the password phrase

 We will also create a request file that will be emailed to proper certification authority 
 for getting a trusted SSL certificate (if needed) under file localhost.key.csr:
 ------------------------------------------------------------------------
 | $/usr/local/openssl/bin/openssl req -new 				|
 |				  -key localhost.key 			|
 |				  -out localhost.key.csr		|
 ------------------------------------------------------------------------

   Then you must enter you password phrase, coutnry code (optionally), state name (optionally),
  locality name (optionally), organization name (optionally), oganazation unit name (optionally)
  common name - HERE MUST BE YOUR SERVER ADDRESS (or FQDN) (e.g. www.site.com) localhost
 


  While waiting for the certification authority, we can create a temporary self-signed certificate,
  good for 30 (or more) days: 
 ------------------------------------------------------------------------
 | $/usr/local/openssl/bin/openssl req -new 				|
 | $/usr/local/openssl/bin/openssl x509 -req 				|
 |			  	  -days 30 				|
 |				  -in localhost.key.csr 		|
 |				  -signkey localhost.key 		|
 |				  -out localhost.cert 			|
 | $chmod 400 localhost.cert						|
 | $chmod 400 localhost.key						|
 | $chmod 400 localhost.key.unsecure					|
 ------------------------------------------------------------------------
  Then you must enter the main password-phrase


 apache opnessl config
 ---------------------

 in file
 ------------------------------------------------------------------------
 | httpd.conf								|
 ------------------------------------------------------------------------
 uncomment the next string
 ------------------------------------------------------------------------ 
 | LoadModule ssl_module modules/mod_ssl.so				|
 ------------------------------------------------------------------------
 and the next string
 ------------------------------------------------------------------------
 | LoadModule socache_shmcb_module modules/mod_socache_shmcb.so		|
 ------------------------------------------------------------------------
 and the next string
 ------------------------------------------------------------------------
 | Include conf/extra/httpd-ssl.conf					|
 ------------------------------------------------------------------------

 modify file /usr/local/apache2/conf/extra/ssl.conf
 ------------------------------------------------------------------------
 | Listen 443								|
 | <VirtualHost _default_:443>						|
 |   ServerName localhost						|
 |   SSLEngine on							|
 |   SSLCertificateFile /home/ssl/localhost.cert			|
 |   SSLCertificateKeyFile /home/ssl/localhost.key.unsecure		|
 | </VirtualHost>							|
 ------------------------------------------------------------------------
 

 
 apache base config
 ------------------
 
 edit the file /usr/local/apache2/conf/httpd.conf
 add the next strings
 ------------------------------------------------------------------------
 | DocumentRoot "/home/www"						|
 | # allow / create basic mod_rewrite rules				|
 | <Directory "/home/www">						|
 |   Options Indexes Includes FollowSymLinks MultiViews			|
 |   AllowOverride All							|
 |   Order allow,deny							|
 |   Allow from all							|
 | </Directory>								|
 ------------------------------------------------------------------------
 
 And dissalow clients to access .htaccess:
 ------------------------------------------------------------------------
 | <Files ~ "^.ht">							|
 |   Order allow,deny							|
 |   Deny from all							|
 | </Files>								|
 ------------------------------------------------------------------------
 
 apache php config
 -----------------

 edit the file /usr/local/apaceh2/conf/httpd.conf
 add the next string
 ------------------------------------------------------------------------
 | LoadModule php5_module modules/libphp5.so)				|
 ------------------------------------------------------------------------
 then add to the end of /usr/local/apache2/conf/httpd.conf
 ------------------------------------------------------------------------
 | <FilesMatch \.php$>							|
 |     SetHandler application/x-httpd-php 				|
 | </FilesMatch>							|
 |									|
 | DirectoryIndex index.html index.htm index.php 			|
 | AddType application/x-httpd-php .php					|
 | AddType application/x-httpd-php-source .phps				|
 ------------------------------------------------------------------------

 in file 
 ------------------------------------------------------------------------
 | httpd.conf								|
 ------------------------------------------------------------------------

 write the next string
 ------------------------------------------------------------------------
 | Listen 127.0.0.1:80							|
 ------------------------------------------------------------------------

 then uncomment the next string
 ------------------------------------------------------------------------
 | Include /usr/local/apache2/conf/extra/httpd-vhosts.conf		|
 ------------------------------------------------------------------------

 write the next strings
 ------------------------------------------------------------------------
 | <VirtualHost localhost:80>						|
 |	ServerName localhost						|
 |	DocumentRoot "/usr/local/apache2/htdocs/localhost"		|
 | </VirtualHost>							|
 |									|
 | <VirtualHost host1:80>						|
 |	ServerName host1						|
 |	DocumentRoot "/usr/local/apache2/htdocs/host1"			|
 | </VirtualHost>							|
 |									|
 | <VirtualHost host2:80>						|
 |	ServerName host2						|
 |	DocumentRoot "/usr/local/apache2/htdocs/host2"			|
 | </VirtualHost>							|
 |									|
 | <VirtualHost host3:80>						|
 |	ServerName host3						|
 |	DocumentRoot "/usr/local/apache2/htdocs/host3"			|
 | </VirtualHost>							|
 ------------------------------------------------------------------------

In file "etc/hosts"

----------------
127.0.0.1	localhost host1 host2 host3
--------------------
then restart the server

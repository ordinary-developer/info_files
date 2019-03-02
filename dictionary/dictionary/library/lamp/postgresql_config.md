# postresql config

## base config
Create postresSQL user account:
```sh
$ sudo adduser postgres	
$ sudo passwd postgres
```

Create postreSQL data directory:
```sh
$ sudo mkdir /usr/local/postresql/data
$ sudo chown postgres:postgres /usr/local/postgresql/data
```

Initialize postgreSQL data directory:
```sh
$ su - postgres
$ /usr/local/postgresql/bin/initdb -D /usr/local/posgresql/data
```
 
 workflow
 ---------

 Start postgresql database
 ------------------------------------------------------------------------
 | $ /usr/local/postgresql/bin/postmaster -D /usr/local/postgresql/data	|
 |                                          > logfile 2>&1 &		|
 ------------------------------------------------------------------------
 or 
 ------------------------------------------------------------------------
 | $ /home/szymon/postgres/bin/postgres -D /home/szymon/postgres/data/  |
 ------------------------------------------------------------------------
 (you must run it under your postgres user)

 start, stop and restart PostgreSQL database
 ------------------------------------------------------------------------
 | # postgresql stop							|
 | # postgresql start							|
 | # postgresql restart							|
 ------------------------------------------------------------------------

 to start client psql type
 ------------------------------------------------------------------------ 
 | /usr/local/postgresql/bin/psql -U user password			|
 ------------------------------------------------------------------------ 
 

 Create postgresql db and test the installation
 ------------------------------------------------------------------------
 | $ /usr/local/postgresql/bin/createdb test				|
 | $ /usr/local/postgresql/bin/psql test 				|
 ------------------------------------------------------------------------
 (psql - is a postgresql command prompt)

 change PostgreSQL root user password 
 ------------------------------------------------------------------------
 | $ /usr/local/postgresql/bin/psql postgres postgres			|
 | Password: (oldpassword)						|
 | # ALTER USER postgres WITH PASSWORD 'tmppassword';			|	
 | $/usr/local/pgsql/bin/psql postgres postgres				|
 | Password: (tmppassword)						|
 ------------------------------------------------------------------------

 create a PostgreSQL user
 Method 1: Creating the user in the PSQL prompt, with CREATE USER command
 ------------------------------------------------------------------------
 | # CREATE USER ramesh WITH password 'tmppassword';			|
 ------------------------------------------------------------------------

 Method 2: Creating the user in the shell prompt, with createuser command.
 ------------------------------------------------------------------------
 | $ /usr/local/pgsql/bin/createuser sathiya				|
 ------------------------------------------------------------------------

 others
 -----
 All configuration files are stored in the data directory: ~/postgres/data. 
 If you want to run multiple Postgres versions on the same machine, 
 they must have different data directories and different ports. 
 The port number can be changed in ~/postgres/data/postgresql.conf.


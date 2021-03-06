# postresql config

## base config
create postresSQL user account:
```sh
$ sudo adduser postgres	
$ sudo passwd postgres
```

create postreSQL data directory:
```sh
$ sudo mkdir /usr/local/postresql/data
$ sudo chown postgres:postgres /usr/local/postgresql/data
```

initialize postgreSQL data directory:
```sh
$ su - postgres
$ /usr/local/postgresql/bin/initdb -D /usr/local/posgresql/data
```
 

## workflow
start postgresql database:
```sh
$ /usr/local/postgresql/bin/postmaster -D /usr/local/postgresql/data
                                          > logfile 2>&1 &	
```
or 
```sh
$ /home/szymon/postgres/bin/postgres -D /home/szymon/postgres/data/  
```
(you must run it under your postgres user)

start, stop and restart PostgreSQL database:
```sh
# postgresql stop
# postgresql start
# postgresql restart
```

to start client psql type:
```sh
$ /usr/local/postgresql/bin/psql -U user password
```
 
create postgresql db and test the installation:`
```sh
$ /usr/local/postgresql/bin/createdb test
$ /usr/local/postgresql/bin/psql test
```
(psql - is a postgresql command prompt)

change PostgreSQL root user password :
```sh
$ /usr/local/postgresql/bin/psql postgres postgres
Password: (oldpassword)
# ALTER USER postgres WITH PASSWORD 'tmppassword';
$ /usr/local/pgsql/bin/psql postgres postgres
Password: (tmppassword)
```

create a PostgreSQL user:
method 1: Creating the user in the PSQL prompt, with CREATE USER command
```sh
# CREATE USER ramesh WITH password 'tmppassword';
```

method 2: Creating the user in the shell prompt, with createuser command
```sh
$ /usr/local/pgsql/bin/createuser sathiya
```


## aux
all configuration files are stored in the data directory: ~/postgres/data;
if you want to run multiple Postgres versions on the same machine, 
they must have different data directories and different ports; 
the port number can be changed in ~/postgres/data/postgresql.conf


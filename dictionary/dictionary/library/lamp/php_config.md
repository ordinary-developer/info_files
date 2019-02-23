# php config

copy php.ini file from you sources to php_config dir:
```sh
cp -p php.ini-development /usr/local/apache2/php/php.ini
```

In you php.ini file (e.g /usr/local/php/php.ini)
add the next string:
```
# mysql.default_socket = /tmp/mysql.sock	
short_open_tag = Off
register_globals = Off
allow_url_fopen = Off
```


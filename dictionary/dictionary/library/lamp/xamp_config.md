# xamp config
to allow xamp running within a local network

in file '/opt/lampp/etc/extra/httpd-xampp.conf'
 
comment the next strings
```
 <LocationMatch "^/(?i:(?:xampp|security|licenses|phpmyadmin|webalizer|server-status|server-info))">
        Require local
    ErrorDocument 403 /error/XAMPP_FORBIDDEN.html.var
</LocationMatch>
```

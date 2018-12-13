# PPPoE config

# simple config
to install pppoeconf:
- install a package
  (standard debian distr contains it)
  ```sh
  $ sudo apt-get install pppoeconf 
  ```

- run this program
  ```sh
  $ sudo pppoeconf                                                 
  ```
  in many cases it is sufficient to answer "Yes",
  and you must input your login and password
  (from provider)

to connect:
```sh
$ sudo pon dsl-provider                                            
```

to disconnect:
```sh
sudo poff                                                       
```
 
remark: also a module "pppld" must be in the memory; 
(here troubles can be)
or may be rp-pppoe.so module - a kernel module must be in the memory)
 

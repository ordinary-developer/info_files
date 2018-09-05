 PPPoE
 #####

 simple way 
 ==========

 to connect to internet via pppoe:
 - install pppoeconf
   (standard debian distr contains it)
 --------------------------------------------------------------------
 | $ sudo apt-get install pppoeconf                                 |
 --------------------------------------------------------------------

 Also a module "pppld" must be in the memory. (Here troubles can be)
 (or may be rp-pppoe.so module - a kernel module must be in the memory)
 
 - run this program
 --------------------------------------------------------------------
 | $ sudo pppoeconf                                                 |
 --------------------------------------------------------------------

 In many cases it is sufficient to answer "Yes",
 and you must input your login and password
 (from provider)

 - to connect
 --------------------------------------------------------------------
 | sudo pon dsl-provider                                            |
 --------------------------------------------------------------------

 - to disconnect
 --------------------------------------------------------------------
 | sudo poff                                                        |                                                                    
 --------------------------------------------------------------------
 
 
# bash base config

## .bashrc
to add supporting multicoloring add to your '.bashrc' file
```
TERM=xterm-256color
```


## env vars
to export a variable for the current session:
```sh
$ export GMOCK=/home/ivan/gmock-1.6
```

to permanently have a variable:
```sh
$ echo 'GMOCK="/home/ivan/gmock-1.6"' >> ~/.bashrc
```

to change the path variable:
```sh
export PATH=$PATH:your/path/for/program
```


 bash command prompt
 -------------

 to make a good command promt type
 ------------------------------------------------------------------------
 | $ export PS1="[\u] "							|
 ------------------------------------------------------------------------
 And you will get
 [ivan] ...

 or you can use for 
 user = \u
 host = \h
 directory info = \w
 new line = \n
 cariage return = \r
 e.t.c

 to make a more complicated command prompt
 ------------------------------------------------------------------------
 | $ export PS1="[\h@\u | \w]\n==> "					|
 ------------------------------------------------------------------------
 and you will get
 [host@ivan | /home]
 ==>

 for a simple line
 ------------------------------------------------------------------------ 
 | $ export PS1="$ "							|
 ------------------------------------------------------------------------
 and you will get
 $

 After that you can add this string to your ~/.bashrc file manually or
 by the next command
 ------------------------------------------------------------------------
 | $ echo PS1="$ "							|
 ------------------------------------------------------------------------

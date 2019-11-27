# boost install

## common
first you must specify your boost_dir 
(where unpacked boost packages will be placed
 and where final boost libraries will be placed).
 
in out case it is '~/libraries/boost_NNN'


## headers-only install
to install headers only:
- download bootstrap
- unpack it to (for example) ~/libraries

then you can use it:
```sh
$ c++ -I path/to/boost yourfile.cpp -o your_application
```

for gcc:
```sh
$ g++ -I path/to/boost yourfile.cpp -o your_application
```


## full install
some files in boost (e.g. testing libraries) required building

go to the directory "tools/build" (in boost_root (distr package)):
```sh
$ cd  $boost_dir/tools/build                                         
```

the type:
```sh
$ ./bootstrap.sh                                                     
```
 
the compile into a temp directory:
```sh
$ b2 -j4 install --prefix=~/tmp/build-boost
```

then add "PREFIX/bin" to your PATH environment variable:
```sh
$ PATH=$PATH:~/tmp/build-boost                                       
```

then enter the boost_dir:
```sh
$ cd $boost_dir                                                      
```
or something like this: ("cd ~/boost_1_59_0", etc.)

then type:
```sh
$ b2 -j4 --build-dir=/tmp/build-boost toolset=gcc stage              
```
(where "stage" is a directory inside you boost distr
where all bin libraries will be placed)

that will build static and shared non-debug multi-threaded variants
of the libraries;
to build all variants, pass the additional option *"--build-type=complete"*

building the special stage target places Boost library binaries
 in the *"stage/lib/"* subdirectory of the Boost tree; 
to use a different directory
pass the *"--stagedir=directory"* option to b2.

 
## using built libs
there are two main challenges associated with linking:
- tool configuration, 
  e.g. choosing command-line options or IDE settings;
- identifying the library binary,
  among all the build variants, 
  whose compile configuration is compatible 
  with the rest of your project

there are two main ways to link to libraries:
- you can specify the full path to each library:
  ```sh
  $ c++ -I path/to/boost_1_59_0 example.cpp -o example \               
    ~/boost/stage/lib/libboost_regex-gcc34-mt-d-1_36.a          
  ```
 
- you can separately specify a directory to search
  (with -Ldirectory) and a library name to search for 
  (with -llibrary,2 dropping the filename's leading lib
  and trailing suffix (.a in this case):
  ```sh
  $ c++ -I path/to/boost_1_59_0 example.cpp -o example \            
      -L~/boost/stage/lib/ -lboost_regex-gcc34-mt-d-1_36     
  ```

this method is just as terse as method A for one library; 
it really pays off when you're using multiple libraries 
from the same directory; 
note, however, that if you use this method with a library 
that has both static (.a) and dynamic (.so) builds,
the system may choose one automatically for you
unless you pass a special option
such as -static on the command line.

 
## aux build
your headers must be for example in ~/libraries
then copy your boost distrib to for example ~/sources
and from there:
```sh
$ cd ~/sources
$ ./boostrap.sh --prefix=path/to/installation/prefix
$ sudo ./b2 -j4 install
```

other command: 
```sh
./b2 -a -j8 toolset=clang-osx link=static threading=multi \ 
     --layout=tagged --with-thread
```

to link your files
you can specify the full path to each library:
```sh
$ c++ -I path/to/boost_1_59_0 example.cpp -o example \
      ~/boost/stage/lib/libboost_regex-gcc34-mt-d-1_36.a
```

you can separately specify a directory to search (with -Ldirectory)
and a library name to search for 
(with -llibrary,2 dropping the filename's leading lib 
and trailing suffix) (.a in this case):
```sh 
$ c++ -I path/to/boost_1_59_0 example.cpp -o example \
      -L~/boost/stage/lib/ -lboost_regex-gcc34-mt-d-1_36
```

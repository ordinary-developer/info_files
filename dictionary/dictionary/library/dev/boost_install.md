# boost install

## common
First you must speficy in mind your boost_dir 
(where unpacked boost package will be placed
 and where final boost libraries will be placed).
 
In out case it is "~/libraries/boost_NNN".


 headers-only install
 ====================
 
 - download bootstrap
 - unpack it to for example ~/libraries

 Now you can use it
 (because in many cases it is sufficient to have only header files)
 then you can use it:
 ------------------------------------------------------------------------
 | $ c++ -I path/to/boost yourfile.cpp -o your_application	        	|
 ------------------------------------------------------------------------

 for gcc:
 ------------------------------------------------------------------------
 | $ g++ -I path/to/boost yourfile.cpp -o your_application	        	|
 ------------------------------------------------------------------------


 full install
 =============

 Some files in boost (e.g. testing libraries) required building.

 - go to the directory "tools/build" (in boost_root (distr package)),
 ------------------------------------------------------------------------
 | $ cd  $boost_dir/tools/build                                         |
 ------------------------------------------------------------------------

 - type
 ------------------------------------------------------------------------
 | $ ./bootstrap.sh                                                     |
 ------------------------------------------------------------------------
 
 - compile into a temp directory
 ------------------------------------------------------------------------
 | $ b2 -j4 install --prefix=~/tmp/build-boost                          |
 ------------------------------------------------------------------------

 - add PREFIX/bin to your PATH environment variable
 ------------------------------------------------------------------------
 | $ PATH=$PATH:~/tmp/build-boost                                       |
 ------------------------------------------------------------------------

 - enter the boost_dir
 ------------------------------------------------------------------------
 | $ cd $boost_dir                                                      |
 ------------------------------------------------------------------------
  ("$cd ~/boost_1_59_0", "$ cd ~/libraries/boost_1_59_0" etc.)

 - type
 ------------------------------------------------------------------------
 | $ b2 -j4 --build-dir=/tmp/build-boost toolset=gcc stage              |
 ------------------------------------------------------------------------
 (where "stage" is a directory inside you boost distr
  where all bin libraries will be placed)

 that will build static and shared non-debug multi-threaded variants
 of the libraries.
 To build all variants, pass the additional option, "--build-type=complete"

 Building the special stage target places Boost library binaries in the
 "stage/lib/" subdirectory of the Boost tree. 
 To use a different directory pass the "--stagedir=directory" option to b2.

 
 build libraries using 
 =====================

 There are two main challenges associated with linking:

 - Tool configuration, e.g. choosing command-line options or IDE settings.
 - Identifying the library binary, among all the build variants, 
   whose compile configuration is compatible with the rest of your project.

 There are two main ways to link to libraries:
 - You can specify the full path to each library:
 ------------------------------------------------------------------------
 | $ c++ -I path/to/boost_1_59_0 example.cpp -o example \               |
 |          ~/boost/stage/lib/libboost_regex-gcc34-mt-d-1_36.a          |
 ------------------------------------------------------------------------
 
 - You can separately specify a directory to search (with -Ldirectory)
   and a library name to search for 
  (with -llibrary,2 dropping the filename's leading lib and trailing suffix 
  (.a in this case):
 ------------------------------------------------------------------------
 | $ c++ -I path/to/boost_1_59_0 example.cpp -o example \               |
 |          -L~/boost/stage/lib/ -lboost_regex-gcc34-mt-d-1_36          |
 ------------------------------------------------------------------------
 As you can see, this method is just as terse as method A for one library; 
 it really pays off when you're using multiple libraries 
 from the same directory. 
 Note, however, that if you use this method with a library 
 that has both static (.a) and dynamic (.so) builds,
 the system may choose one automatically for you
 unless you pass a special option such as -static on the command line.

 
 auxiliary build
 ===============

 your headers must be for example in ~/libraries
 then copy your boost distrib to for example ~/sources
 and from there
 $ cd ~/sources
 $ ./boostrap.sh --prefix=path/to/installation/prefix (in my case /usr/local)
 $ sudo ./b2 -j4 install
 (other command is for example
 ( "./b2 -a -j8 toolset=clang-osx link=static threading=multi \ 
                --layout=tagged --with-thread")

 to link your files
 you can specify the full path to each library:

 $ c++ -I path/to/boost_1_59_0 example.cpp -o example \
   ~/boost/stage/lib/libboost_regex-gcc34-mt-d-1_36.a

 You can separately specify a directory to search (with -Ldirectory)
 and a library name to search for 
 (with -llibrary,2 dropping the filename's leading lib and trailing suffix)
 (.a in this case):
 
 $ c++ -I path/to/boost_1_59_0 example.cpp -o example \
   -L~/boost/stage/lib/ -lboost_regex-gcc34-mt-d-1_36

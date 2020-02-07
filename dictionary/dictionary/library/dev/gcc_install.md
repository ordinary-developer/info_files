# gcc install

## gcc-4.9 install from packages
to install gcc from packages (in Debian) (for gcc-4.9):
```sh
 $ sudo apt-get install gcc-4.9
```

to install g++ (c++ compiler):
```sh
$ sudo apt-get install g++-4.9
```    


## gcc-4.9 config
to use the binary files in your bash you can create some sym links:
```sh
$ make links from /usr/bin/gcc-4.9 to ~/shorcuts/gcc
$ make links from /usr/bin/g++-4.9 to ~/shorcuts/g++
```


## g++-7.0/g++-8.0 install
to install g++-7.0 or g++-8.0 in Debian 9 (Stretch):
1. add the next line to the */etc/apt/sources.list*:
   ```sh
   deb http://mirror.yandex.ru/debian testing main contrib non-free
   ```
   (you can include an other mirror for the experimental branch).

2. update the apt cache:
   ```sh
   $ sudo apt-get update
   ```

3. to see if the package can be installed:
   ```sh
   $ apt-cache pkgnames g++-8
   ```
 
4. install the package:
   ```sh
   $ sudo apt-get install -t testing g++-8
   ```

to run the compiler make symlinks to your favorite directory
or type in the shell:
```sh
$ g++-8
```


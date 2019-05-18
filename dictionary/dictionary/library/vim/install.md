# vim install

Prerequisites
------------------

It is neccessary to install "libncursesw5-dev"
```sh
$ sudo apt-get install libncurses5-dev libncursesw5-dev
```


Solution
-----------

To install vim from sources
```sh
$ git clone https://github.com/vim/vim.git
$ apt-get install libx11-dev dbus-x11 libxtst-dev
$ ./configure --with-features=huge --enable-gui --with-x
$ sudo make
$ sudo install
```

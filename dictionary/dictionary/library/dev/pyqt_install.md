# pyqt install

## install
- qt without sources
- install in your virtualenv:
  ```sh
  $ pip install sip
  $ pip install pyqt
  ```
- install pyqt:
  ```sh
  $ python configure.py --destdir \
     ~/dev/envs/pyqt5/lib/python3.4/site-packages/ \
     --qmake ~/Qt/5.4/gcc_64/bin/qmake
  ```
  here instead of ~/dev ... must be /usr/local/stow

## aux info
[site about pyqt install](http://habrahabr.ru/post/248189/)

virtual env config:
```sh
virtualenv --prompt="[pyqt5] " pyqt5
$ python /usr/local/bin/pyvenv project_env ~/sandboxes/python/pyqt5
$ source ~/sandboxes/python/pyqt5/bin/activate
```

stow ALWAYS will put output files to /usr/local/stow 
and if you even do not specify the path
by the prefix notation in the configure script


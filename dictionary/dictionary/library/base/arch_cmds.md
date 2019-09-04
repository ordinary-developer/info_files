# archive commands

## common unpacking
to unpack it is usefull to use the next script:
```sh
unpack () {
  if [ -f $1 ] ; then
    case $1 in
       *.tar.bz2) tar xvjf $1    ;;
       *.tar.gz)  tar xvzf $1    ;;
       *.tar.xz)  tar xvJf $1    ;;
       *.bz2)     bunzip2 $1     ;;
       *.rar)     unrar x $1     ;;
       *.gz)      gunzip $1      ;;
       *.tar)     tar xvf $1     ;;
       *.tbz2)    tar xvjf $1    ;;
       *.tgz)     tar xvzf $1    ;;
       *.zip)     unzip $1       ;;
       *.Z)       uncompress $1  ;;
       *.7z)      7z x $1        ;;
       *.xz)      unxz $1        ;;
       *.exe)     cabextract $1  ;;	
       *)         echo "\`$1': Unknown method of file compression" ;;
    esac
  else
    echo "\`$1' no foud"
  fi
}
```


## tar unpacking
to unpack a simple tar acrhive:
```sh
$ tar xvf package-name.tar
```


## .xz unpacking
to unpack an .xz archive:
```sh
$ apt-get install xz
$ zx --decompress package-name.xz
```

# flash player install

## install flash player for chromium
to install flash plaeyer for google chomium first
download it from the site: 
```
www.adobe.com/support/flashplayer/download.html 
```

unpack it:
```sh
$tar xvf flashplaery_11_plugin_debug.i386.tar.gz    
```

copy file */usr/lib/kde4/libflashplayer.so*
to a directory:
- (for chrome) */usr/lib/chromium-browser/plugins/*
  or */opt/google/chrome/plugins/*
- (for opera) */usr/lib/opera/plugins* 
 

## mozilla
unpack your archive, then in the unpacked folder type:
```sh
# cp /usr/* -r /usr
```

find the flashplayer file in the archive,
then change the rigths for the file:
```sh
$ chmod +x libflashplayer
```

then copy this file to local firefox config folder:
```sh
$ cp libflashplayer ~/.mozilla
```


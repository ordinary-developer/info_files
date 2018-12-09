# Flash player install

## install flash player for chromium
To install flash plaeyer for google chomium first
download it from the site 
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
 

 mozilla
 -------
 
 unpack your archive,
 then in the unpacked folder type
 ------------------------------------------------------------------------
 | # cp /usr/* -r /usr							|
 ------------------------------------------------------------------------
 find the flashplayer file in the archive
 
 first change the rigths for the file  
 ------------------------------------------------------------------------
 | $ chmod +x libflashplayer						|
 ------------------------------------------------------------------------
 then copy this file to local firefox config folder
 ------------------------------------------------------------------------
 | $ cp libflashplayer ~/.mozilla					|
 ------------------------------------------------------------------------

 

  
 
 


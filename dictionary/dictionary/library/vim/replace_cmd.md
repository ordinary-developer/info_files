# replace command
find each occurrence of 'foo' (in all lines), and replace it with 'bar':
```
:%s/foo/bar/g
```

find each occurrence of 'foo' (in the current line only), and replace it with 'bar':
```
:s/foo/bar/g
```

change each 'foo' to 'bar', but ask for confirmation first:
```
:%s/foo/bar/gc
```

change only whole words exactly matching 'foo' to 'bar'; ask for confirmation:
```
:%s/\<foo\>/bar/gc
```

change each 'foo' (case insensitive) to 'bar', ask for confirmation;
this may be wanted after using ":set noignorecase" to make searches case sensitive: 
```
:%s/foo/bar/gci
```

change each 'foo' (case sensitive) to 'bar'; ask for confirmation;
this may be wanted after using :set ignorecase to make searches case insensitive:
```
:%s/foo/bar/gcI
```

# replace command
 Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.
 ------------------------------------------------------------------------
 | :%s/foo/bar/g							|
 ------------------------------------------------------------------------

 Find each occurrence of 'foo' (in the current line only), and replace it with 'bar'.
 ------------------------------------------------------------------------
 | :s/foo/bar/g								|
 ------------------------------------------------------------------------

 Change each 'foo' to 'bar', but ask for confirmation first.
 ------------------------------------------------------------------------
 | :%s/foo/bar/gc							|
 ------------------------------------------------------------------------

 Change only whole words exactly matching 'foo' to 'bar'; ask for confirmation.
 ------------------------------------------------------------------------
 | :%s/\<foo\>/bar/gc							|
 ------------------------------------------------------------------------

 Change each 'foo' (case insensitive) to 'bar'; ask for confirmation.
 This may be wanted after using :set noignorecase to make searches case sensitive (the default).
 ------------------------------------------------------------------------ 
 | :%s/foo/bar/gci							|
 ------------------------------------------------------------------------

 Change each 'foo' (case sensitive) to 'bar'; ask for confirmation.
 This may be wanted after using :set ignorecase to make searches case insensitive.
 ------------------------------------------------------------------------
 | :%s/foo/bar/gcI							|
 ------------------------------------------------------------------------

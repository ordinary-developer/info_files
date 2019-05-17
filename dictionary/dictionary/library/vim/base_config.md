# vifm config

## common issues
it is useful to copy all plugings and other files to the folder
```
~/.vim/ 
```

to allow properly work of .vimrc file
it is necessary to create two folders
```
~/.vim/backup
~/.vim/tmp
```


# html link highlighting           
to exclude underlying for links in file
```
~/.vim/syntax/html.vim 
```

find the next string:
```
HtmlHiLink htmlLink     Underlined 
```

and change it to:
```
HtmlHiLink htmlLink     htmlBold 
```

or simple comment it


## plugins         

### NERDTree 
after unpacking a NERDTree plugig, you have a file:
```
~/.vim/plugin/NERD_tree.vim 
```

find there the next strings:
```
call s:initVariable("g:NERDTreeWinPos", "left") 
call s:initVariable("g:NERDTreeWinSize", 31)
```

and change them to:
```
call s:initVariable("g:NERDTreeWinPos", "right")
call s:initVariable("g:NERDTreeWinSize", 17)
```


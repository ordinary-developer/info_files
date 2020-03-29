# vundle

## prerequisites
before using vundle you must have vim and git
and make backup of your .vimrc and .vim directory

for all manipulations you must have git installed


## install
to install vundle:
```sh
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
```

then you must create your .vimrc file:
```
set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " This is the Vundle package, which can be found on GitHub
  " For GitHub repos, you specify plugins using the
  " 'user/repository' format
  Bundle 'gmarik/vundle'
 
 " We could also add repositories with a ".git" extension
 Bundle 'scrooloose/nerdtree.git'

 " To get plugins from Vim Scripts, you can reference the plugin
 " by name as it appears on the site
 Bundle 'CSAprox'
 
 " Now we can turn our filetype functionality back on
 "filetype plugin indent on 
 "because work badly
```

to add other not github repository you can run in vim:
```
Bundle 'git://git.wincent.com/command-t.git'
```

run vim and type:
```
:PluginInstall 
```

exit by:
```
:bdelete 
```


## plugin config
### to add plugin
run in vim:
```
:Plugins
```
or 
```
:PluginSearch!
```
it will find on the Vim scripts vilf

for example:
```
:PluginSearch markdown
```

then choose your markdown plugin from the list and press "i"

exit by:
```
:bdelete 
```

then edit your .vimrc file and add your plugin:
```
...
Plugin 'Markdown'
...
```

you can also install plugins from github


### to delete a pluging
1-st way:
run vim, then type:
```
:PluginList
```
then select a plugin (by i,k) and press D,
then edit your .vimrc file and delete from there your plugin
  
2-nd way:
remove your plugin (plugin name, of course) first from .vimrc
then run vim and type:
```
:PluginClean
```
then you must confirm your intent

to physically remove a plugin:
```sh
$ rm -rf ~/.vim/bundle/plugin_name
```

_remarks_
instead of word 'Plugin' you can use word 'Bundle'


## aux info
[useful link](https://habr.com/post/148549/)

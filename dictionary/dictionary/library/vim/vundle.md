# vundle
 pre-installation
 ------------------

 Before using vundle you must have vim and git
 and make backup of your .vimrc and .vim directory

 For all manipulations you must have git installed.

 installation
 ------------
 
 To install vundle
 ------------------------------------------------------------------------
 |$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle | 
 ------------------------------------------------------------------------

 Then you must create your .vimrc file
 ------------------------------------------------------------------------
 | set nocompatible							|
 |   filetype off							|
 |  set rtp+=~/.vim/bundle/vundle/					|
 |  call vundle#rc()							|
 |									|
 |  " This is the Vundle package, which can be found on GitHub.		|
 |  " For GitHub repos, you specify plugins using the			|
 |  " 'user/repository' format						|
 |  Bundle 'gmarik/vundle'						|
 |									|
 |   " We could also add repositories with a ".git" extension		|
 |  Bundle 'scrooloose/nerdtree.git'					|
 |									|
 |   " To get plugins from Vim Scripts, you can reference the plugin	|
 |   " by name as it appears on the site				|
 |  Bundle 'CSAprox'							|
 |									|
 |  " Now we can turn our filetype functionality back on		|
 |  "filetype plugin indent on 						|
 |  "because work badly							|
 ------------------------------------------------------------------------

  to add other not github repository you can
 ------------------------------------------------------------------------
 | Bundle 'git://git.wincent.com/command-t.git'    			|
 ------------------------------------------------------------------------
 
 Run vim and type
 ------------------------------------------------------------------------
 | :PluginInstall   							|
 ------------------------------------------------------------------------
 For all manipulation you must have git installed

 Exit by
 ------------------------------------------------------------------------
 | :bdelete   								|
 ------------------------------------------------------------------------


 plugin configuration
 --------------------

 run in vim
 ------------------------------------------------------------------------
 | :Plugins          							|
 ------------------------------------------------------------------------
  or 
 ------------------------------------------------------------------------
 | :PluginSearch!      							|
 ------------------------------------------------------------------------
 it will find on the Vim scripts vilf

 for example
 ------------------------------------------------------------------------
 | :PluginSearch markdown						|
 ------------------------------------------------------------------------

 Then choose your markdown plugin from the list and press "i";

 Exit by
 ------------------------------------------------------------------------
 | :bdelete   								|
 ------------------------------------------------------------------------
  Then edit your .vimrc file and add your plugin
 ------------------------------------------------------------------------
 | ...									|
 | Plugin 'Markdown'							|
 | ...									|
 ------------------------------------------------------------------------
  
 You can also install plugins from github.

 To delete a pluging

 1-st version
 run vim, then type
 ------------------------------------------------------------------------
 | :PlugingList      							|
 ------------------------------------------------------------------------
 then select a pluging (by i,k) and press D
 then edit your .vimrc file and delete from there your plugin
  
 2-nd version
 remove your plugin (plugin name, of course) first from .vimrc
 then run vim and type
 ------------------------------------------------------------------------
 | :PluginClean      							|
 ------------------------------------------------------------------------
 Then you must confirm your intent

 
 To remove a pluging
 ------------------------------------------------------------------------
 | $ rm -rf ~/.vim/bundle/plugin1	  				|
 ------------------------------------------------------------------------		

 ***
 Instead of word 'Plugin' you can use word 'Bundle'

## Aux
 a useful link:
https://habr.com/post/148549/

